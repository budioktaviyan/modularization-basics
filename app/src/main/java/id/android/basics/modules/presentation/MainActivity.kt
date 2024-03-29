package id.android.basics.modules.presentation

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import id.android.basics.module.x.presentation.NativeActivity
import id.android.basics.modules.databinding.ActivityMainBinding
import io.flutter.embedding.android.FlutterActivity

class MainActivity : AppCompatActivity() {

  private lateinit var viewBinding: ActivityMainBinding

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

    viewBinding = ActivityMainBinding.inflate(layoutInflater)
    setContentView(viewBinding.root)

    viewBinding.btnNative.setOnClickListener { startNative() }
    viewBinding.btnFlutter.setOnClickListener { startFlutter() }
  }

  private fun startNative() {
    val intent = Intent(this, NativeActivity::class.java)

    startActivity(intent)
  }

  private fun startFlutter() {
    val intent = FlutterActivity.withCachedEngine("main_engine").build(this)

    startActivity(intent)
  }
}