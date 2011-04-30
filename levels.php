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
