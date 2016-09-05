.class public abstract Lcom/nineoldandroids/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:F

.field b:Ljava/lang/Class;

.field c:Z

.field private d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->d:Landroid/view/animation/Interpolator;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe;->c:Z

    .line 320
    return-void
.end method

.method public static a(F)Lcom/nineoldandroids/animation/Keyframe;
    .registers 2

    .prologue
    .line 92
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static a(FF)Lcom/nineoldandroids/animation/Keyframe;
    .registers 3

    .prologue
    .line 108
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0
.end method

.method public static a(FI)Lcom/nineoldandroids/animation/Keyframe;
    .registers 3

    .prologue
    .line 76
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    return-object v0
.end method

.method public static b(F)Lcom/nineoldandroids/animation/Keyframe;
    .registers 2

    .prologue
    .line 124
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/animation/Interpolator;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/nineoldandroids/animation/Keyframe;->d:Landroid/view/animation/Interpolator;

    .line 222
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe;->c:Z

    return v0
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public c()F
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe;->a:F

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe;->e()Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract e()Lcom/nineoldandroids/animation/Keyframe;
.end method
