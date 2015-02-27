;;; poly-js.el
;; 
;; Filename: poly-js.el
;; Author: Bradley Strauss
;;
;; Polymode for Javascript and JSON chunks.
;;

(require 'polymode)


(defcustom pm-host/js
  (pm-bchunkmode "Javascript"
		 :mode 'javascript-mode)
  "Javascript host chunkmode"
  :group 'hostmodes
  :type 'object)


(defcustom pm-inner/js
  (pm-hbtchunkmode-auto "Javascript"
			:head-reg "."
			:tail-reg "."
			:head-mode 'host
			:tail-mode 'host
			:font-lock-narrow t)
  "Javascript typical configuration"
  :group 'polymodes
  :type 'object)


(defcustom pm-poly/js
  (pm-polymode-one "javascript"
		   :hostmode 'pm-host/js
		   :innermode 'pm-inner/fundamental)
  "Javascript typical configuration"
  :group 'polymodes
  :type 'object)


(define-polymode poly-js-mode pm-poly/js)

(provide 'poly-js)
