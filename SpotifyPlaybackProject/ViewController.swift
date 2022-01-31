//
//  ViewController.swift
//  SpotifyPlaybackProject
//
//  Created by Rafael Oliveira on 31/01/22.
//

import UIKit

class ViewController: UIViewController {

    let margin: CGFloat = 20
    let spacing: CGFloat = 32
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupNavigationBar()
    }

    func setupNavigationBar() {
        view.backgroundColor = .black
        navigationItem.title = "Playback"
    }
    
    func setupViews() {
        
        let offlineLabel = makeMainLabel(text: "Offline")
        let offlineSwitch = makeSwitch()
        let offlineLabelNotify = makeSubLabel(text: "When you go offline, you'll only be able to play the music and podcast you've downloaded")
        
        let crossFade = makeBoldLabel(text: "CrossFade")
        
        let minSec = makeSubLabel(text: "0s")
        let maxSec = makeSubLabel(text: "12s")
        let progressionView = makeProgressionView()
        
        let gaplessplayback = makeMainLabel(text: "Gaples Playback")
        let gaplesplayBackSwitch = makeSwitch()
        
        let hideUnplaybleSongs = makeMainLabel(text: "Hide Unplayble Songs")
        let hideUnplaybleSongsSwitch = makeSwitch()
        
        let enableAudioNormalization = makeMainLabel(text: "Enable Audio Normalization")
        let enableAudioNormalizationSwitch = makeSwitch()
        
        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineLabelNotify)
        view.addSubview(crossFade)
        view.addSubview(minSec)
        view.addSubview(progressionView)
        view.addSubview(maxSec)
        view.addSubview(gaplessplayback)
        view.addSubview(gaplesplayBackSwitch)
        
        view.addSubview(hideUnplaybleSongs)
        view.addSubview(hideUnplaybleSongsSwitch)
        view.addSubview(enableAudioNormalization)
        view.addSubview(enableAudioNormalizationSwitch)
        
        
        NSLayoutConstraint.activate([
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            offlineLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            
            offlineSwitch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            offlineSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -8),
            
            offlineLabelNotify.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: margin),
            offlineLabelNotify.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            offlineLabelNotify.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            crossFade.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            crossFade.topAnchor.constraint(equalTo: offlineLabelNotify.bottomAnchor, constant: spacing),
            
            minSec.topAnchor.constraint(equalTo: crossFade.topAnchor, constant: spacing),
            minSec.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            
            maxSec.topAnchor.constraint(equalTo: crossFade.topAnchor, constant: spacing),
            maxSec.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            gaplessplayback.topAnchor.constraint(equalTo: minSec.topAnchor, constant: spacing+20),
            gaplessplayback.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            
            gaplesplayBackSwitch.centerYAnchor.constraint(equalTo: gaplessplayback.centerYAnchor),
            gaplesplayBackSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            hideUnplaybleSongs.topAnchor.constraint(equalTo: gaplessplayback.bottomAnchor, constant: spacing),
            hideUnplaybleSongs.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            
            hideUnplaybleSongsSwitch.centerYAnchor.constraint(equalTo: hideUnplaybleSongs.centerYAnchor),
            hideUnplaybleSongsSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            enableAudioNormalization.topAnchor.constraint(equalTo: hideUnplaybleSongs.bottomAnchor, constant: spacing),
            enableAudioNormalization.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            
            enableAudioNormalizationSwitch.centerYAnchor.constraint(equalTo: enableAudioNormalization.centerYAnchor),
            enableAudioNormalizationSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8)
            
            
        ])
       
        
    }
    

}

