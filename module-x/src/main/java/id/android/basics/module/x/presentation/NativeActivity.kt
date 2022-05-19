package id.android.basics.module.x.presentation

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import id.android.basics.module.x.R

class NativeActivity : AppCompatActivity(R.layout.activity_native) {

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

    supportActionBar?.apply { setDisplayHomeAsUpEnabled(true) }
  }

  override fun onSupportNavigateUp(): Boolean {
    onBackPressed()

    return super.onSupportNavigateUp()
  }
}