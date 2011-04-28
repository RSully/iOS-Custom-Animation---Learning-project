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
	
$output = json_encode($levels);
file_put_contents('levels.txt', $output);
echo $output;
?>
