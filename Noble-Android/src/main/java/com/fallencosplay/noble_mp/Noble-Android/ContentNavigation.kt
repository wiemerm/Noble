package com.fallencosplay.noble_mp.`Noble-Android`

import androidx.annotation.IdRes
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.NavController
import androidx.navigation.ui.NavigationUI
import com.fallencosplay.noble_mp.Noble.R

class ContentNavigation {
    private lateinit var navController: NavController

    fun init(context: AppCompatActivity, registerNavController: NavController) {
        navController = registerNavController
        setStartDestination(R.id.tacPadFragment)
        NavigationUI.setupActionBarWithNavController(context, navController)
    }

    private fun setStartDestination(@IdRes destination: Int) {
        val navGraph = navController.navInflater.inflate(R.navigation.nav_graph)
        navGraph.startDestination = destination
        navController.graph = navGraph
    }

    private fun setDestination(@IdRes destination: Int) {
        navController.navigate(destination)
    }

    fun popBackStack() = navController.popBackStack()
    fun navigateToSettingsFragment() = setDestination(R.id.settingsFragment)
    fun navigateToTacPadFragment() = setDestination(R.id.tacPadFragment)
}