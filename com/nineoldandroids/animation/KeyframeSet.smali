.class Lcom/nineoldandroids/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"


# instance fields
.field a:I

.field b:Lcom/nineoldandroids/animation/Keyframe;

.field c:Lcom/nineoldandroids/animation/Keyframe;

.field d:Landroid/view/animation/Interpolator;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/nineoldandroids/animation/TypeEvaluator;


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/animation/Keyframe;)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->a:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->b:Lcom/nineoldandroids/animation/Keyframe;

    .line 49
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->c:Lcom/nineoldandroids/animation/Keyframe;

    .line 50
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->c:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->d:Landroid/view/animation/Interpolator;

    .line 51
    return-void
.end method

.method public static varargs a([F)Lcom/nineoldandroids/animation/KeyframeSet;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 69
    array-length v2, p0

    .line 70
    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    .line 71
    if-ne v2, v1, :cond_27

    .line 72
    invoke-static {v5}, Lcom/nineoldandroids/animation/Keyframe;->b(F)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v0, v3, v4

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    aget v2, p0, v4

    invoke-static {v0, v2}, Lcom/nineoldandroids/animation/Keyframe;->a(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v0, v3, v1

    .line 80
    :cond_21
    new-instance v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {v0, v3}, Lcom/nineoldandroids/animation/FloatKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;)V

    return-object v0

    .line 75
    :cond_27
    aget v0, p0, v4

    invoke-static {v5, v0}, Lcom/nineoldandroids/animation/Keyframe;->a(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v0, v3, v4

    .line 76
    :goto_31
    if-ge v1, v2, :cond_21

    .line 77
    int-to-float v0, v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    aget v4, p0, v1

    invoke-static {v0, v4}, Lcom/nineoldandroids/animation/Keyframe;->a(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v0, v3, v1

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31
.end method

.method public static varargs a([I)Lcom/nineoldandroids/animation/KeyframeSet;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 54
    array-length v2, p0

    .line 55
    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 56
    if-ne v2, v1, :cond_27

    .line 57
    invoke-static {v5}, Lcom/nineoldandroids/animation/Keyframe;->a(F)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v4

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    aget v2, p0, v4

    invoke-static {v0, v2}, Lcom/nineoldandroids/animation/Keyframe;->a(FI)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v1

    .line 65
    :cond_21
    new-instance v0, Lcom/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {v0, v3}, Lcom/nineoldandroids/animation/IntKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;)V

    return-object v0

    .line 60
    :cond_27
    aget v0, p0, v4

    invoke-static {v5, v0}, Lcom/nineoldandroids/animation/Keyframe;->a(FI)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v4

    .line 61
    :goto_31
    if-ge v1, v2, :cond_21

    .line 62
    int-to-float v0, v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    aget v4, p0, v1

    invoke-static {v0, v4}, Lcom/nineoldandroids/animation/Keyframe;->a(FI)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v1

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31
.end method


# virtual methods
.method public a(F)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 170
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->d:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_10

    .line 171
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 173
    :cond_10
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->f:Lcom/nineoldandroids/animation/TypeEvaluator;

    iget-object v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->b:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nineoldandroids/animation/KeyframeSet;->c:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/animation/TypeEvaluator;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    :goto_22
    return-object v0

    .line 176
    :cond_23
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_5b

    .line 177
    iget-object v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    .line 178
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_3a

    .line 180
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 182
    :cond_3a
    iget-object v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->b:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Keyframe;->c()F

    move-result v1

    .line 183
    sub-float v2, p1, v1

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->c()F

    move-result v3

    sub-float v1, v3, v1

    div-float v1, v2, v1

    .line 185
    iget-object v2, p0, Lcom/nineoldandroids/animation/KeyframeSet;->f:Lcom/nineoldandroids/animation/TypeEvaluator;

    iget-object v3, p0, Lcom/nineoldandroids/animation/KeyframeSet;->b:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v3, v0}, Lcom/nineoldandroids/animation/TypeEvaluator;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_22

    .line 187
    :cond_5b
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_9a

    .line 188
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->a:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    .line 189
    iget-object v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->c:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Keyframe;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_79

    .line 191
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 193
    :cond_79
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->c()F

    move-result v1

    .line 194
    sub-float v2, p1, v1

    iget-object v3, p0, Lcom/nineoldandroids/animation/KeyframeSet;->c:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->c()F

    move-result v3

    sub-float v1, v3, v1

    div-float v1, v2, v1

    .line 196
    iget-object v2, p0, Lcom/nineoldandroids/animation/KeyframeSet;->f:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/nineoldandroids/animation/KeyframeSet;->c:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lcom/nineoldandroids/animation/TypeEvaluator;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_22

    .line 199
    :cond_9a
    iget-object v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->b:Lcom/nineoldandroids/animation/Keyframe;

    move-object v2, v1

    move v1, v0

    .line 200
    :goto_9e
    iget v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->a:I

    if-ge v1, v0, :cond_de

    .line 201
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    .line 202
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->c()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_da

    .line 203
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_bc

    .line 205
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 207
    :cond_bc
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->c()F

    move-result v1

    .line 208
    sub-float v3, p1, v1

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->c()F

    move-result v4

    sub-float v1, v4, v1

    div-float v1, v3, v1

    .line 210
    iget-object v3, p0, Lcom/nineoldandroids/animation/KeyframeSet;->f:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v2, v0}, Lcom/nineoldandroids/animation/TypeEvaluator;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_22

    .line 200
    :cond_da
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_9e

    .line 216
    :cond_de
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->c:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_22
.end method

.method public a(Lcom/nineoldandroids/animation/TypeEvaluator;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->f:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 140
    return-void
.end method

.method public b()Lcom/nineoldandroids/animation/KeyframeSet;
    .registers 6

    .prologue
    .line 144
    iget-object v2, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    .line 145
    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 146
    new-array v4, v3, [Lcom/nineoldandroids/animation/Keyframe;

    .line 147
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_1e

    .line 148
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->e()Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    aput-object v0, v4, v1

    .line 147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 150
    :cond_1e
    new-instance v0, Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-direct {v0, v4}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V

    .line 151
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/KeyframeSet;->b()Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 221
    const-string/jumbo v1, " "

    .line 222
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_7
    iget v2, p0, Lcom/nineoldandroids/animation/KeyframeSet;->a:I

    if-ge v1, v2, :cond_34

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_7

    .line 225
    :cond_34
    return-object v0
.end method
