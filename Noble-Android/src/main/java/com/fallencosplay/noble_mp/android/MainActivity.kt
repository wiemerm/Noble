package com.fallencosplay.noble_mp.Noble

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.fragment.NavHostFragment
import com.fallencosplay.noble_mp.android.ContentNavigation
import org.koin.android.ext.android.inject

class MainActivity : AppCompatActivity() {
    private val contentNavigation by inject<ContentNavigation>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val navController = (supportFragmentManager
            .findFragmentById(R.id.nav_host_fragment) as NavHostFragment)
            .navController
        contentNavigation.init(this, navController)
    }

    override fun onResume() {
        super.onResume()

        supportActionBar?.setDisplayHomeAsUpEnabled(true)
    }

    override fun onSupportNavigateUp(): Boolean {
        return contentNavigation.popBackStack()
    }
}
