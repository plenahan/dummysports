use std::error::Error;

fn main() -> Result<(), Box<dyn Error>> {
  tonic_build::configure()
    .out_dir("generated")
    .build_server(false)
    .compile(
      &["proto/dummy_service.proto"],
      &["proto"]
    )?;
  Ok(())
}