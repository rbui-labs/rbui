# frozen_string_literal: true

module PhlexUI
    class Badge < Base
        SIZES = {
            sm: "px-1.5 py-0.5 text-xs",
            md: "px-2 py-1 text-xs",
            lg: "px-3 py-1 text-sm"
        }

        COLORS = {
            primary: "text-primary bg-primary-50 dark:bg-primary-400/20 ring-primary-600/20",
            secondary: "text-text bg-muted-background ring-border",
            outline: "text-text bg-background ring-border",
            destructive: "text-destructive-600 bg-destructive-50 dark:bg-destructive-400/20 dark:text-destructive-400 ring-destructive-600/20",
            success: "text-success-600 bg-success-50 dark:bg-success-400/20 dark:text-success-400 ring-success-600/20",
            warning: "text-warning-600 bg-warning-50 dark:bg-warning-400/20 dark:text-warning-400 ring-warning-600/20",
            slate: "text-slate-600 bg-slate-50 dark:bg-slate-400/20 dark:text-slate-400 ring-slate-600/20",
            gray: "text-gray-600 bg-gray-50 dark:bg-gray-400/20 dark:text-gray-400 ring-gray-600/20",
            zinc: "text-zinc-600 bg-zinc-50 dark:bg-zinc-400/20 dark:text-zinc-400 ring-zinc-600/20",
            neutral: "text-neutral-600 bg-neutral-50 dark:bg-neutral-400/20 dark:text-neutral-400 ring-neutral-600/20",
            stone: "text-stone-600 bg-stone-50 dark:bg-stone-400/20 dark:text-stone-400 ring-stone-600/20",
            red: "text-red-600 bg-red-50 dark:bg-red-400/20 dark:text-red-400 ring-red-600/20",
            orange: "text-orange-600 bg-orange-50 dark:bg-orange-400/20 dark:text-orange-400 ring-orange-600/20",
            amber: "text-amber-600 bg-amber-50 dark:bg-amber-400/20 dark:text-amber-400 ring-amber-600/20",
            yellow: "text-yellow-600 bg-yellow-50 dark:bg-yellow-400/20 dark:text-yellow-400 ring-yellow-600/20",
            lime: "text-lime-600 bg-lime-50 dark:bg-lime-400/20 dark:text-lime-400 ring-lime-600/20",
            green: "text-green-600 bg-green-50 dark:bg-green-400/20 dark:text-green-400 ring-green-600/20",
            emerald: "text-emerald-600 bg-emerald-50 dark:bg-emerald-400/20 dark:text-emerald-400 ring-emerald-600/20",
            teal: "text-teal-600 bg-teal-50 dark:bg-teal-400/20 dark:text-teal-400 ring-teal-600/20",
            cyan: "text-cyan-600 bg-cyan-50 dark:bg-cyan-400/20 dark:text-cyan-400 ring-cyan-600/20",
            sky: "text-sky-600 bg-sky-50 dark:bg-sky-400/20 dark:text-sky-400 ring-sky-600/20",
            blue: "text-blue-600 bg-blue-50 dark:bg-blue-400/20 dark:text-blue-400 ring-blue-600/20",
            indigo: "text-indigo-600 bg-indigo-50 dark:bg-indigo-400/20 dark:text-indigo-400 ring-indigo-600/20",
            violet: "text-violet-600 bg-violet-50 dark:bg-violet-400/20 dark:text-violet-400 ring-violet-600/20",
            purple: "text-purple-600 bg-purple-50 dark:bg-purple-400/20 dark:text-purple-400 ring-purple-600/20",
            fuchsia: "text-fuchsia-600 bg-fuchsia-50 dark:bg-fuchsia-400/20 dark:text-fuchsia-400 ring-fuchsia-600/20",
            pink: "text-pink-600 bg-pink-50 dark:bg-pink-400/20 dark:text-pink-400 ring-pink-600/20",
            rose: "text-rose-600 bg-rose-50 dark:bg-rose-400/20 dark:text-rose-400 ring-rose-600/20"
        }

        def initialize(variant: :primary, size: :md, **args)
            @variant = variant
            @size = size
            super(**args)
        end

        def template(&)
            span(**attrs, &)
        end

        private

        def default_attrs
            {
                class: tokens("inline-flex items-center rounded-md font-medium ring-1 ring-inset", SIZES[@size], COLORS[@variant]),
            }
        end
    end
end
