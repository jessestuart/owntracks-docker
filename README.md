## Docker multi-arch images for OwnTracks Recorder and Mosquitto

[![CircleCI][circleci]][circleci 2] [![][microbadger]][microbadger 2]

Fork of the official [OwnTracks Recorder Docker image][github], with:

- Support for arm64 and armv7/armhf architectures.
- Automated nightly CI builds.

Note: this Dockerfile doesn't build OwnTracks from source, but relies on
upstream `.deb` packages -- and thus will automatically pull in new versions as
they're released, the next time a build is triggered on CircleCI (currently: on
any commit to master, and at 12AM UTC / 8PM EST every evening.)

> This is a Dockerfile for the [OwnTracks Recorder][github] which includes the
> [Mosquitto broker][mosquitto] as well as the Recorder proper. Documentation
> for running this is in the [Booklet][owntracks].
>
> It sets Mosquitto broker (with TLS) as well as the OwnTracks Recorder for
> collecting [OwnTracks][owntracks 2] location data.

[circleci]:
  https://circleci.com/gh/jessestuart/owntracks-docker.svg?style=shield
[circleci 2]: https://circleci.com/gh/jessestuart/owntracks-docker
[github]: https://github.com/owntracks/recorder
[microbadger]:
  https://images.microbadger.com/badges/image/jessestuart/owntracks.svg
[microbadger 2]: https://microbadger.com/images/jessestuart/owntracks
[mosquitto]: http://mosquitto.org
[owntracks]: http://owntracks.org/booklet/clients/recorder/
[owntracks 2]: http://owntracks.org<Paste>
