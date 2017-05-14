.class Landroid/support/v4/app/FragmentTransitionCompat21;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .prologue
    .line 37
    if-eqz p0, :cond_8

    .line 38
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 40
    :cond_8
    return-object p0
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 45
    if-eqz p0, :cond_15

    .line 46
    invoke-static {p2, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 47
    if-eqz p3, :cond_e

    .line 48
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 50
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 51
    const/4 p0, 0x0

    .line 57
    :cond_15
    :goto_15
    return-object p0

    .line 53
    :cond_16
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    .line 54
    check-cast v0, Landroid/transition/Transition;

    invoke-static {v0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_15
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 202
    .line 203
    check-cast p0, Landroid/transition/Transition;

    .line 204
    check-cast p1, Landroid/transition/Transition;

    .line 205
    check-cast p2, Landroid/transition/Transition;

    .line 207
    if-eqz p0, :cond_52

    if-eqz p1, :cond_52

    .line 216
    :goto_b
    if-eqz p3, :cond_22

    .line 218
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 219
    if-eqz p0, :cond_17

    .line 220
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 222
    :cond_17
    if-eqz p1, :cond_1c

    .line 223
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 225
    :cond_1c
    if-eqz p2, :cond_21

    .line 226
    invoke-virtual {v0, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 254
    :cond_21
    :goto_21
    return-object v0

    .line 232
    :cond_22
    const/4 v1, 0x0

    .line 233
    if-eqz p1, :cond_48

    if-eqz p0, :cond_48

    .line 234
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 235
    invoke-virtual {v1, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 236
    invoke-virtual {v1, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 237
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 243
    :cond_38
    :goto_38
    if-eqz p2, :cond_50

    .line 244
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 245
    if-eqz v1, :cond_44

    .line 246
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 248
    :cond_44
    invoke-virtual {v0, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_21

    .line 238
    :cond_48
    if-eqz p1, :cond_4c

    move-object v1, p1

    .line 239
    goto :goto_38

    .line 240
    :cond_4c
    if-eqz p0, :cond_38

    move-object v1, p0

    .line 241
    goto :goto_38

    :cond_50
    move-object v0, v1

    .line 251
    goto :goto_21

    :cond_52
    move p3, v0

    goto :goto_b
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V
    .registers 3

    .prologue
    .line 321
    if-eqz p0, :cond_a

    .line 322
    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$3;

    invoke-direct {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21$3;-><init>(Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 334
    :cond_a
    return-void
.end method

.method static synthetic a(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .registers 4

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    move-object v2, p2

    check-cast v2, Landroid/transition/Transition;

    move-object/from16 v4, p4

    .line 388
    check-cast v4, Landroid/transition/Transition;

    move-object/from16 v6, p6

    .line 389
    check-cast v6, Landroid/transition/Transition;

    move-object/from16 v10, p8

    .line 390
    check-cast v10, Landroid/transition/Transition;

    .line 391
    if-eqz v10, :cond_29

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$4;

    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-object/from16 v9, p9

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Landroid/support/v4/app/FragmentTransitionCompat21$4;-><init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 426
    :cond_29
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 66
    check-cast p1, Landroid/transition/Transition;

    .line 67
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 71
    check-cast p0, Landroid/transition/Transition;

    .line 72
    invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/support/v4/app/FragmentTransitionCompat21$1;

    invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentTransitionCompat21$1;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 80
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    check-cast p0, Landroid/transition/TransitionSet;

    .line 267
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 268
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v2

    .line 271
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 272
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 273
    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, v3, :cond_28

    .line 274
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 275
    invoke-static {v2, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/List;Landroid/view/View;)V

    .line 273
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 277
    :cond_28
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {p0, p3}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 279
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 61
    check-cast p0, Landroid/transition/Transition;

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    move-object v5, p0

    check-cast v5, Landroid/transition/Transition;

    move-object v11, p2

    .line 144
    check-cast v11, Landroid/transition/Transition;

    move-object v3, p1

    .line 145
    check-cast v3, Landroid/transition/Transition;

    .line 146
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-static {v5, v11, v0, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 147
    if-nez p0, :cond_13

    if-eqz p1, :cond_4e

    .line 148
    :cond_13
    if-eqz v5, :cond_1a

    .line 149
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 151
    :cond_1a
    if-eqz p1, :cond_31

    .line 152
    move-object/from16 v0, p5

    move-object/from16 v1, p10

    move-object/from16 v2, p12

    invoke-static {v3, v0, v1, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 154
    const/4 v4, 0x1

    move-object/from16 v0, p12

    invoke-static {v5, v3, v0, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 155
    const/4 v4, 0x1

    move-object/from16 v0, p12

    invoke-static {v11, v3, v0, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 158
    :cond_31
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v3, Landroid/support/v4/app/FragmentTransitionCompat21$2;

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p11

    move-object/from16 v10, p8

    invoke-direct/range {v3 .. v11}, Landroid/support/v4/app/FragmentTransitionCompat21$2;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    invoke-virtual {v12, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 195
    move-object/from16 v0, p6

    invoke-static {v5, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    .line 197
    :cond_4e
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 118
    check-cast p0, Landroid/transition/Transition;

    .line 119
    check-cast p1, Landroid/transition/Transition;

    .line 120
    check-cast p2, Landroid/transition/Transition;

    .line 121
    invoke-static {p0, p2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 122
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 123
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    check-cast p0, Landroid/transition/Transition;

    .line 435
    instance-of v0, p0, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_19

    .line 436
    check-cast p0, Landroid/transition/TransitionSet;

    .line 437
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 438
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_4b

    .line 439
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    .line 440
    invoke-static {v2, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 442
    :cond_19
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Landroid/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 443
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_4b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_4b

    .line 445
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 447
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3c
    if-ltz v1, :cond_4b

    .line 448
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 447
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3c

    .line 452
    :cond_4b
    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 31
    invoke-static {p0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method private static a(Ljava/util/List;Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 287
    invoke-static {p0, p1, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/List;Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 304
    :cond_a
    return-void

    .line 290
    :cond_b
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 291
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 292
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 293
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_38

    .line 294
    check-cast v0, Landroid/view/ViewGroup;

    .line 295
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 296
    const/4 v3, 0x0

    :goto_26
    if-ge v3, v4, :cond_38

    .line 297
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 298
    invoke-static {p0, v5, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/List;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_35

    .line 299
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 291
    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method public static a(Ljava/util/Map;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_f

    .line 368
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_f
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    .line 371
    check-cast p1, Landroid/view/ViewGroup;

    .line 372
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 373
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_26

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 375
    invoke-static {p0, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 379
    :cond_26
    return-void
.end method

.method private static a(Landroid/transition/Transition;)Z
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 485
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 486
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static a(Ljava/util/List;)Z
    .registers 2

    .prologue
    .line 490
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static a(Ljava/util/List;Landroid/view/View;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 311
    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_b

    .line 312
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_c

    .line 313
    const/4 v0, 0x1

    .line 316
    :cond_b
    return v0

    .line 311
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static synthetic b(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 31
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_4

    .line 92
    :cond_3
    :goto_3
    return-object v0

    .line 86
    :cond_4
    check-cast p0, Landroid/transition/Transition;

    .line 87
    if-eqz p0, :cond_3

    .line 90
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 91
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_3
.end method

.method private static b(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    if-eqz p0, :cond_1b

    .line 98
    if-nez p1, :cond_16

    move v1, v0

    :goto_6
    move v2, v0

    .line 99
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 100
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 99
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 98
    :cond_16
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_6

    .line 103
    :cond_1b
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 463
    check-cast p0, Landroid/transition/Transition;

    .line 464
    instance-of v1, p0, Landroid/transition/TransitionSet;

    if-eqz v1, :cond_19

    .line 465
    check-cast p0, Landroid/transition/TransitionSet;

    .line 466
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 467
    :goto_d
    if-ge v0, v1, :cond_3d

    .line 468
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    .line 469
    invoke-static {v2, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 471
    :cond_19
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Landroid/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 472
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 473
    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 475
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 476
    :goto_2e
    if-ge v1, v2, :cond_3d

    .line 477
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 476
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 481
    :cond_3d
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 347
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    .line 348
    check-cast p1, Landroid/view/ViewGroup;

    .line 349
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 350
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_15
    :goto_15
    return-void

    .line 352
    :cond_16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 353
    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v1, :cond_15

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 355
    invoke-static {p0, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->b(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 359
    :cond_27
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method private static c(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 337
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 338
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 339
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 341
    aget v2, v1, v4

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v1, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    return-object v0
.end method
