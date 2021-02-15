package com.fallencosplay.noble_mp.`Noble-Android`

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import com.fallencosplay.noble_mp.Noble.databinding.FragmentTacpadBinding
import org.koin.android.ext.android.inject

class TacPadFragment : Fragment() {
    private val contentNavigation: ContentNavigation by inject()
    private lateinit var binding: FragmentTacpadBinding


    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        binding = FragmentTacpadBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.settingsButton.setOnClickListener { contentNavigation.navigateToSettingsFragment() }

    }

    override fun onResume() {
        super.onResume()

        (activity as? AppCompatActivity)?.supportActionBar?.hide()
    }
}