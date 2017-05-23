.class Landroid/support/transition/FadePort;
.super Landroid/support/transition/VisibilityPort;
.source "FadePort.java"


# static fields
.field private static a:Z


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/transition/FadePort;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/transition/FadePort;-><init>(I)V

    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/transition/VisibilityPort;-><init>()V

    .line 99
    iput p1, p0, Landroid/support/transition/FadePort;->b:I

    .line 100
    return-void
.end method

.method private a(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 107
    cmpl-float v1, p2, p3

    if-nez v1, :cond_b

    .line 109
    if-eqz p4, :cond_a

    .line 110
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 122
    :cond_a
    :goto_a
    return-object v0

    .line 114
    :cond_b
    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 116
    sget-boolean v1, Landroid/support/transition/FadePort;->a:Z

    if-eqz v1, :cond_39

    .line 117
    const-string/jumbo v1, "Fade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Created animator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_39
    if-eqz p4, :cond_a

    .line 120
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_a
.end method

.method private d(Landroid/support/transition/TransitionValues;)V
    .registers 6

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 127
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 128
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:fade:screenX"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:fade:screenY"

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 142
    iget v0, p0, Landroid/support/transition/FadePort;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    if-nez p4, :cond_c

    .line 182
    :cond_b
    :goto_b
    return-object v1

    .line 145
    :cond_c
    iget-object v2, p4, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 146
    sget-boolean v0, Landroid/support/transition/FadePort;->a:Z

    if-eqz v0, :cond_51

    .line 147
    if-eqz p2, :cond_63

    iget-object v0, p2, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 148
    :goto_16
    const-string/jumbo v3, "Fade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_51
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 152
    new-instance v0, Landroid/support/transition/FadePort$1;

    invoke-direct {v0, p0, v2}, Landroid/support/transition/FadePort$1;-><init>(Landroid/support/transition/FadePort;Landroid/view/View;)V

    .line 181
    invoke-virtual {p0, v0}, Landroid/support/transition/FadePort;->a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 182
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v6, v0, v1}, Landroid/support/transition/FadePort;->a(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_b

    :cond_63
    move-object v0, v1

    .line 147
    goto :goto_16
.end method

.method public a(Landroid/support/transition/TransitionValues;)V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/transition/VisibilityPort;->a(Landroid/support/transition/TransitionValues;)V

    .line 135
    invoke-direct {p0, p1}, Landroid/support/transition/FadePort;->d(Landroid/support/transition/TransitionValues;)V

    .line 136
    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 16

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 189
    iget v0, p0, Landroid/support/transition/FadePort;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v9, :cond_d

    .line 347
    :cond_c
    :goto_c
    return-object v1

    .line 193
    :cond_d
    if-eqz p2, :cond_b2

    iget-object v2, p2, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 194
    :goto_11
    if-eqz p4, :cond_b5

    iget-object v0, p4, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 195
    :goto_15
    sget-boolean v3, Landroid/support/transition/FadePort;->a:Z

    if-eqz v3, :cond_54

    .line 196
    const-string/jumbo v3, "Fade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fade.onDisappear: startView, startVis, endView, endVis = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_54
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_f1

    .line 202
    :cond_5c
    if-eqz v0, :cond_b8

    move-object v3, v1

    move-object v5, v0

    move-object v2, v0

    .line 242
    :goto_61
    if-eqz v5, :cond_104

    .line 244
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v1, "android:fade:screenX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 245
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v4, "android:fade:screenY"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    new-array v4, v9, [I

    .line 247
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 248
    aget v6, v4, v6

    sub-int/2addr v1, v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-static {v5, v1}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;I)V

    .line 249
    const/4 v1, 0x1

    aget v1, v4, v1

    sub-int/2addr v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 250
    invoke-static {p1}, Landroid/support/transition/ViewGroupOverlay;->a(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/transition/ViewGroupOverlay;->a(Landroid/view/View;)V

    .line 259
    new-instance v0, Landroid/support/transition/FadePort$2;

    move-object v1, p0

    move v4, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/transition/FadePort$2;-><init>(Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 287
    invoke-direct {p0, v2, v8, v7, v0}, Landroid/support/transition/FadePort;->a(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v1

    goto/16 :goto_c

    :cond_b2
    move-object v2, v1

    .line 193
    goto/16 :goto_11

    :cond_b5
    move-object v0, v1

    .line 194
    goto/16 :goto_15

    .line 205
    :cond_b8
    if-eqz v2, :cond_11a

    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_c3

    move-object v3, v1

    move-object v5, v2

    .line 211
    goto :goto_61

    .line 212
    :cond_c3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_11a

    .line 213
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_11a

    .line 214
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 216
    const/4 v3, -0x1

    if-eq v0, v3, :cond_117

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_117

    iget-boolean v0, p0, Landroid/support/transition/FadePort;->q:Z

    if-eqz v0, :cond_117

    move-object v0, v2

    :goto_ed
    move-object v3, v1

    move-object v5, v0

    .line 222
    goto/16 :goto_61

    .line 226
    :cond_f1
    const/4 v3, 0x4

    if-ne p5, v3, :cond_f9

    move-object v3, v0

    move-object v5, v1

    move-object v2, v0

    .line 228
    goto/16 :goto_61

    .line 231
    :cond_f9
    if-ne v2, v0, :cond_100

    move-object v3, v0

    move-object v5, v1

    move-object v2, v0

    .line 233
    goto/16 :goto_61

    :cond_100
    move-object v3, v1

    move-object v5, v2

    .line 236
    goto/16 :goto_61

    .line 289
    :cond_104
    if-eqz v3, :cond_c

    .line 292
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 300
    new-instance v0, Landroid/support/transition/FadePort$3;

    move-object v1, p0

    move v4, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/transition/FadePort$3;-><init>(Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 345
    invoke-direct {p0, v2, v8, v7, v0}, Landroid/support/transition/FadePort;->a(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v1

    goto/16 :goto_c

    :cond_117
    move-object v0, v1

    move-object v2, v1

    goto :goto_ed

    :cond_11a
    move-object v3, v1

    move-object v5, v1

    move-object v2, v1

    goto/16 :goto_61
.end method
