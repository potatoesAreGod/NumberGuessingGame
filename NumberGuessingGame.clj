(ns number-guessing-game)


(defn guessed-wrong [hint]
    (println (str "Sorry, guess again but " hint))
    false)


(defn guessed-right [guessCount]
    (println (str "You win! It took you " guessCount " attempts."))
    true)


(defn evaluate [num guess guessCount]
    (cond
        (> num guess) (guessed-wrong "higher.")
        (< num guess) (guessed-wrong "lower.")
    :else (guessed-right guessCount)))


(defn game
    []
    (println (str "Guess the random number between 1 - 100!")))
    (let [num (inc (rand-int 100))]
        (loop [guessCount 1]
            (if (= true (evaluate num(let [guess (read)]) guessCount))
                -1
                (recur (inc guessCount))))))
(game)
