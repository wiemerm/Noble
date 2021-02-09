package com.fallencosplay.noble_mp.`Noble-Android`

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.navigation.Navigation
import androidx.navigation.findNavController
import com.fallencosplay.noble_mp.Noble.R
import com.fallencosplay.noble_mp.Noble.databinding.FragmentTacpadBinding

class TacPadFragment : Fragment(R.layout.fragment_tacpad) {
    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val binding = FragmentTacpadBinding.inflate(inflater, container, false)

        binding.settingsButton.setOnClickListener(Navigation.createNavigateOnClickListener(R.id.action_tacpad_to_settings))
        return binding.root
    }

    override fun onResume() {
        super.onResume()

        (activity as? AppCompatActivity)?.supportActionBar?.hide()
    }
}