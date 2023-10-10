import 'package:flutter_sanity/flutter_sanity.dart';
import 'package:flutter_sanity_image_url/flutter_sanity_image_url.dart';

final sanityClient = SanityClient(
  dataset: 'production',
  projectId: 'i0p2y232',
  token:
      'skqvnPfRtWT2HoFdHEwayz0MWwIH9ewa2Te9Abevs0fE0eAS4Awts5OP6NHUgiYxbbMe8IIaJp585R7jaaFPFCzk4BjyYByh19v3JBe7jmX0h4GRudIzO1iRsPjcYgeMcIVRefJPfIBGxDWc176SS0JUKDEkPzGZQEqcP85uKW4iRWXPj98B',
);

final builder = ImageUrlBuilder(sanityClient);

ImageUrlBuilder urlFor(asset) {
  return builder.image(asset);
}
