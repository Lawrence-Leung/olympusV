// See LICENSE for license details.

package mini
import chisel3._
//import circt.stage.ChiselStage
object Main extends App {
  val config = MiniConfig()
  emitVerilog(new Tile(
      coreParams = config.core,
      nastiParams = config.nasti,
      cacheParams = config.cache
    ), Array("--target-dir", "generated"))
}
