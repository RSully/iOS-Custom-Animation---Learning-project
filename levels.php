<?php
$levels = array();

$levels[] = array(
				'start' => array(30, 30),
				'end' => array(0, 460-50, 320, 50),
				'obs' => array(
						array(
							'type' => 'wall',
							'rect' => array(0, 0, 320, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(320-10, 0, 10, 460)
						),
						array(
							'type' => 'wall',
							'rect' => array(0, 0, 10, 460)
						),
						array(
							'type' => 'wall',
							'rect' => array(0, 250, 150, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(200, 0, 10, 100)
						)
					)
			);

$levels[] = array(
				'start' => array(30, 30),
				'end' => array(0, 460-50, 320, 50),
				'obs' => array(
						array(
							'type' => 'wall',
							'rect' => array(0, 0, 320, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(320-10, 0, 10, 460)
						),
						array(
							'type' => 'wall',
							'rect' => array(0, 0, 10, 460)
						),
						array(
							'type' => 'enemy',
							'start' => array(55, 300),
							'end' => array(320-55, 280)
						)
					)
			);

$levels[] = array(
				'start' => array(30, 30),
				'end' => array(0, 460-50, 320, 50),
				'obs' => array(
						array(
							'type' => 'wall',
							'rect' => array(0, 0, 320, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(320-10, 0, 10, 460)
						),
						array(
							'type' => 'wall',
							'rect' => array(0, 0, 10, 460)
						),
						array(
							'type' => 'wall',
							'rect' => array(202, 66, 120, 12)
						),
						array(
							'type' => 'wall',
							'rect' => array(202, 342, 120, 12)
						),
						array(
							'type' => 'coin',
							'point' => array(274, 116)
						),
						array(
							'type' => 'enemy',
							'start' => array(178, 102),
							'end' => array(178, 314)
						)
					)
			);
$levels[] = array(
				'start' => array(24, 460-(10+14+34)),
				'end' => array(170, 10, 160, 84),
				'obs' => array(
						array(
							'type' => 'wall',
							'rect' => array(0, 0, 320, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(320-10, 0, 10, 460)
						),
						array(
							'type' => 'wall',
							'rect' => array(0, 0, 10, 460)
						),
						array(
							'type' => 'wall',
							'rect' => array(0, 460-10, 320, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(140, 94, 180, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(0, 94+86, 118, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(320-118, 94+86+86, 118, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(0, 94+86+86+86, 118, 10)
						),
						array(
							'type' => 'enemy',
							'start' => array(320-60, 144),
							'end' => array(60, 144)
						),
						array(
							'type' => 'enemy',
							'start' => array(60, 144+86),
							'end' => array(320-60, 144+86)
						),
						array(
							'type' => 'enemy',
							'start' => array(320-60, 144+86+86),
							'end' => array(60, 144+86+86)
						)
					)
			);

$levels[] = array(
				'start' => array(160+80, 24),
				'end' => array(0, 0, 160, 80),
				'obs' => array(
						array(
							'type' => 'wall',
							'rect' => array(155, 0, 10, 338)
						),
						array(
							'type' => 'wall',
							'rect' => array(0, 250, 73, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(80, 150, 80, 10)
						),
						array(
							'type' => 'enemy',
							'start' => array(188, 180),
							'end' => array(292+6, 180)
						),
						array(
							'type' => 'enemy',
							'start' => array(292+6, 302),
							'end' => array(188, 302)
						),
						array(	
							'type' => 'enemy',
							'start' => array(24, 430),
							'end' => array(320-24, 430)
						),
						array(
							'type' => 'enemy',
							'start' => array(320-24, 372),
							'end' => array(24, 372)
						),
						array(
							'type' => 'enemy',
							'start' => array(124, 322),
							'end' => array(124, 186)
						),
						array(
							'type' => 'coin',
							'point' => array(160, 372+29)
						)
					)
			);
$levels[] = array(
				'start' => array(260, 318),
				'end' => array(206, 376, 117, 92),
				'obs' => array(
						array(
							// top
							'type' => 'wall',
							'rect' => array(0, 0, 320, 10)
						),
						array(
							// left
							'type' => 'wall',
							'rect' => array(0, 0, 10, 460)
						),
						array(
							// bottom
							'type' => 'wall',
							'rect' => array(0, 460-10, 320, 10)
						),
						array(
							// right
							'type' => 'wall',
							'rect' => array(320-10, 0, 10, 376)
						),
						array(
							'type' => 'wall',
							'rect' => array(206, 376-10, 117, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(220, 293, 100, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(220, 170, 100, 10)
						),
						array(
							'type' => 'wall',
							'rect' => array(220, 148, 10, 26)
						),
						array(
							'type' => 'wall',
							'rect' => array(220, 268, 10, 28)
						),
						array(
							'type' => 'enemy',
							'start' => array(190, 130),
							'end' => array(190, 32)
						),
						array(
							'type' => 'enemy',
							'start' => array(190, 274),
							'end' => array(190, 194)
						),
						array(
							'type' => 'coin',
							'point' => array(272, 255)
						),
						array(
							'type' => 'coin',
							'point' => array(272, 130)
						)
					)
				);
$levels[] = array(
			'start' => array(110+(320-220)/2-17, 460-40/2-18),
			'end' => array(110, 0, 320-220, 40),
			'obs' => array(
					array(
						// topleft block
						'type' => 'wall',
						'rect' => array(0, 0, 110, 40)
					),
					array(
						// topright block
						'type' => 'wall',
						'rect' => array(320-110, 0, 110, 40)
					),
					array(
						// bottomleft block
						'type' => 'wall',
						'rect' => array(0, 460-40, 110, 40)
					),
					array(
						// bottomright block
						'type' => 'wall',
						'rect' => array(320-110, 460-40, 110, 40)
					),
					array(
						// left wall
						'type' => 'wall',
						'rect' => array(0, 0, 10, 460)
					),
					array(
						// right wall
						'type' => 'wall',
						'rect' => array(320-10, 0, 10, 460)
					),
					array(
						'type' => 'coin',
						'point' => array(56, 76*2)
					),
					array(
						'type' => 'coin',
						'point' => array(320-56, 76*3)
					),
					array(
						'type' => 'coin',
						'point' => array(56, 76*4)
					),
					array(
						'type' => 'enemy',
						'start' => array(56,76),
						'end' => array(320-56,76)
					),
					array(
						'type' => 'enemy',
						'start' => array(320-56,76*2),
						'end' => array(56,76*2)
					),
					array(
						'type' => 'enemy',
						'start' => array(56,76*3),
						'end' => array(320-56,76*3)
					),
					array(
						'type' => 'enemy',
						'start' => array(320-56,76*4),
						'end' => array(56, 76*4)
					),
					array(
						'type' => 'enemy',
						'start' => array(56,76*5),
						'end' => array(320-56,76*5)
					)
			)
);


//print_r($levels);
// $levels[] = array(
// 				'start' => array(24, 460-(10+14+34)),
// 				'end' => array(170, 10, 160, 84),
// 				'obs' => array(
// 						array(
// 							'type' => 'wall',
// 							'rect' => array(0, 0, 320, 10)
// 						),

$output = json_encode($levels);
file_put_contents('levels.txt', $output);
echo $output;
?>
