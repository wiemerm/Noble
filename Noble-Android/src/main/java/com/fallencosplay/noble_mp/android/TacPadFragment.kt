package com.fallencosplay.noble_mp.android

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import com.fallencosplay.noble_mp.Noble.databinding.FragmentTacpadBinding
import com.fallencosplay.noble_mp.android.tacpad.TacPadViewModel
import org.koin.android.ext.android.inject
import org.koin.androidx.viewmodel.ext.android.viewModel

class TacPadFragment : Fragment() {
    private val viewModel by viewModel<TacPadViewModel>()
    private val contentNavigation: ContentNavigation by inject()
    private lateinit var binding: FragmentTacpadBinding

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        binding = FragmentTacpadBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.apply {
            settingsButton.setOnClickListener { contentNavigation.navigateToSettingsFragment() }
            topLeftButton.setOnClickListener { viewModel.playClip(INTRO) }
            topRightButton.setOnClickListener { viewModel.playClip(LONE_WORLF) }
            bottomLeftButton.setOnClickListener { viewModel.playClip(COVENANT) }
            bottomRightButton.setOnClickListener { viewModel.playClip(ON_YOUR_OWN) }
        }

    }

    override fun onResume() {
        super.onResume()

        (activity as? AppCompatActivity)?.supportActionBar?.hide()
    }

    companion object {
        const val INTRO = "intro"
        const val LONE_WORLF = "lone_wolf"
        const val COVENANT = "covenant"
        const val ON_YOUR_OWN = "carter_out"
    }
}