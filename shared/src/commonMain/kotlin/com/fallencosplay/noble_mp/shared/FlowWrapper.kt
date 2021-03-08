package com.fallencosplay.noble_mp.shared

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.flow.*
import kotlin.coroutines.CoroutineContext

class FlowWrapper<T>(private val flow: Flow<T>) {
    fun subscribe(
        onEach: ((item: T) -> Unit)? = null,
        onThrow: ((error: Throwable) -> Unit)? = null,
        onComplete: (() -> Unit)? = null,
        scopeProvider: ScopeProvider) = subscribe(scopeProvider.scope, onEach, onThrow, onComplete)

    fun subscribe(
        scope: CoroutineScope,
        onEach: ((item: T) -> Unit)? = null,
        onThrow: ((error: Throwable) -> Unit)? = null,
        onComplete: (() -> Unit)? = null,
    ): Job = flow
        .onEach { device -> onEach?.let { it(device) } }
        .catch { error -> onThrow?.let { it(error) } }
        .onCompletion { onComplete?.let { it() } }
        .launchIn(scope)
        .freeze()
}

interface ScopeProvider {
    val scope: CoroutineScope
}

class MainScopeProvider : ScopeProvider {
    override val scope: CoroutineScope = object : CoroutineScope {
        override val coroutineContext: CoroutineContext
            get() = SupervisorJob() + Dispatchers.Main
    }
}