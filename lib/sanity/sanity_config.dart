import 'package:flutter_sanity/flutter_sanity.dart';
import 'package:flutter_sanity_image_url/flutter_sanity_image_url.dart';

final sanityClient = SanityClient(
  dataset: 'production',
  projectId: 'i0p2y232',
  token:
      '',
);

final builder = ImageUrlBuilder(sanityClient);

ImageUrlBuilder urlFor(asset) {
  return builder.image(asset);
}
