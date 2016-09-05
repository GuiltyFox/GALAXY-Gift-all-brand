.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field private b:I

.field private c:I

.field private d:Landroid/support/v4/widget/ScrollerCompat;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4026
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4017
    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$3000()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/view/animation/Interpolator;

    .line 4021
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    .line 4024
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    .line 4027
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$3000()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    .line 4028
    return-void
.end method

.method private a(F)F
    .registers 6

    .prologue
    .line 4183
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 4184
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 4185
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .registers 14

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 4189
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4190
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4191
    if-le v2, v3, :cond_56

    const/4 v0, 0x1

    .line 4192
    :goto_d
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4193
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4194
    if-eqz v0, :cond_58

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 4195
    :goto_2b
    div-int/lit8 v6, v1, 0x2

    .line 4196
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4197
    int-to-float v7, v6

    int-to-float v6, v6

    invoke-direct {p0, v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4201
    if-lez v4, :cond_5f

    .line 4202
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 4207
    :goto_4f
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 4191
    :cond_56
    const/4 v0, 0x0

    goto :goto_d

    .line 4194
    :cond_58
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_2b

    .line 4204
    :cond_5f
    if-eqz v0, :cond_6b

    move v0, v2

    :goto_62
    int-to-float v0, v0

    .line 4205
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_4f

    :cond_6b
    move v0, v3

    .line 4204
    goto :goto_62
.end method

.method private c()V
    .registers 2

    .prologue
    .line 4146
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    .line 4147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    .line 4148
    return-void
.end method

.method private d()V
    .registers 2

    .prologue
    .line 4151
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    .line 4152
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    if-eqz v0, :cond_a

    .line 4153
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4155
    :cond_a
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 4158
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    if-eqz v0, :cond_8

    .line 4159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    .line 4164
    :goto_7
    return-void

    .line 4161
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4162
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_7
.end method

.method public a(II)V
    .registers 12

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4167
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4168
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:I

    .line 4169
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIIIIII)V

    .line 4171
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4172
    return-void
.end method

.method public a(III)V
    .registers 5

    .prologue
    .line 4211
    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$3000()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4212
    return-void
.end method

.method public a(IIII)V
    .registers 6

    .prologue
    .line 4179
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(III)V

    .line 4180
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 4215
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_13

    .line 4216
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/view/animation/Interpolator;

    .line 4217
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    .line 4219
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4220
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:I

    .line 4221
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIII)V

    .line 4222
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4223
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 4226
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4227
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->h()V

    .line 4228
    return-void
.end method

.method public b(II)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4175
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(IIII)V

    .line 4176
    return-void
.end method

.method public run()V
    .registers 16

    .prologue
    .line 4032
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_a

    .line 4033
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b()V

    .line 4143
    :goto_9
    return-void

    .line 4036
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c()V

    .line 4037
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)V

    .line 4040
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    .line 4041
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 4042
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->g()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 4043
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->b()I

    move-result v9

    .line 4044
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->c()I

    move-result v10

    .line 4045
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:I

    sub-int v11, v9, v0

    .line 4046
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    sub-int v12, v10, v0

    .line 4047
    const/4 v3, 0x0

    .line 4048
    const/4 v1, 0x0

    .line 4049
    iput v9, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:I

    .line 4050
    iput v10, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    .line 4051
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 4052
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_186

    .line 4053
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 4054
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3200(Landroid/support/v7/widget/RecyclerView;)V

    .line 4055
    const-string/jumbo v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->a(Ljava/lang/String;)V

    .line 4056
    if-eqz v11, :cond_64

    .line 4057
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v11, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    .line 4058
    sub-int v2, v11, v3

    .line 4060
    :cond_64
    if-eqz v12, :cond_78

    .line 4061
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v12, v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 4062
    sub-int v0, v12, v1

    .line 4064
    :cond_78
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    .line 4065
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3300(Landroid/support/v7/widget/RecyclerView;)V

    .line 4067
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3400(Landroid/support/v7/widget/RecyclerView;)V

    .line 4068
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4070
    if-eqz v8, :cond_186

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-nez v4, :cond_186

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_186

    .line 4072
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    .line 4073
    if-nez v4, :cond_168

    .line 4074
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    move v14, v2

    move v2, v1

    move v1, v14

    .line 4083
    :goto_a9
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ba

    .line 4084
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4086
    :cond_ba
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c8

    .line 4088
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V
    invoke-static {v4, v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4090
    :cond_c8
    if-nez v1, :cond_cc

    if-eqz v0, :cond_103

    .line 4091
    :cond_cc
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->f()F

    move-result v4

    float-to-int v5, v4

    .line 4093
    const/4 v4, 0x0

    .line 4094
    if-eq v1, v9, :cond_1a6

    .line 4095
    if-gez v1, :cond_18b

    neg-int v4, v5

    :goto_d7
    move v6, v4

    .line 4098
    :goto_d8
    const/4 v4, 0x0

    .line 4099
    if-eq v0, v10, :cond_1a3

    .line 4100
    if-gez v0, :cond_193

    neg-int v5, v5

    .line 4103
    :cond_de
    :goto_de
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v4

    const/4 v13, 0x2

    if-eq v4, v13, :cond_ec

    .line 4105
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 4107
    :cond_ec
    if-nez v6, :cond_f6

    if-eq v1, v9, :cond_f6

    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->d()I

    move-result v1

    if-nez v1, :cond_103

    :cond_f6
    if-nez v5, :cond_100

    if-eq v0, v10, :cond_100

    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->e()I

    move-result v0

    if-nez v0, :cond_103

    .line 4109
    :cond_100
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->h()V

    .line 4112
    :cond_103
    if-nez v3, :cond_107

    if-eqz v2, :cond_10c

    .line 4113
    :cond_107
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4116
    :cond_10c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$3800(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_119

    .line 4117
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4120
    :cond_119
    if-eqz v12, :cond_198

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_198

    if-ne v2, v12, :cond_198

    const/4 v0, 0x1

    move v1, v0

    .line 4122
    :goto_129
    if-eqz v11, :cond_19b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_19b

    if-ne v3, v11, :cond_19b

    const/4 v0, 0x1

    .line 4124
    :goto_138
    if-nez v11, :cond_13c

    if-eqz v12, :cond_140

    :cond_13c
    if-nez v0, :cond_140

    if-eqz v1, :cond_19d

    :cond_140
    const/4 v0, 0x1

    .line 4127
    :goto_141
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->a()Z

    move-result v1

    if-nez v1, :cond_149

    if-nez v0, :cond_19f

    .line 4128
    :cond_149
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4134
    :cond_14f
    :goto_14f
    if-eqz v8, :cond_163

    .line 4135
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 4136
    const/4 v0, 0x0

    const/4 v1, 0x0

    # invokes: Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v8, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 4138
    :cond_15c
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    if-nez v0, :cond_163

    .line 4139
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4142
    :cond_163
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d()V

    goto/16 :goto_9

    .line 4075
    :cond_168
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v5

    if-lt v5, v4, :cond_17f

    .line 4076
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4077
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    # invokes: Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_a9

    .line 4079
    :cond_17f
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    # invokes: Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    :cond_186
    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_a9

    .line 4095
    :cond_18b
    if-lez v1, :cond_190

    move v4, v5

    goto/16 :goto_d7

    :cond_190
    const/4 v4, 0x0

    goto/16 :goto_d7

    .line 4100
    :cond_193
    if-gtz v0, :cond_de

    const/4 v5, 0x0

    goto/16 :goto_de

    .line 4120
    :cond_198
    const/4 v0, 0x0

    move v1, v0

    goto :goto_129

    .line 4122
    :cond_19b
    const/4 v0, 0x0

    goto :goto_138

    .line 4124
    :cond_19d
    const/4 v0, 0x0

    goto :goto_141

    .line 4130
    :cond_19f
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    goto :goto_14f

    :cond_1a3
    move v5, v4

    goto/16 :goto_de

    :cond_1a6
    move v6, v4

    goto/16 :goto_d8
.end method
