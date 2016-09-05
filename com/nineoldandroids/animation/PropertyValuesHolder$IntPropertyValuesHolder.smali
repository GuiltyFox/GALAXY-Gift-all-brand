.class Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Lcom/nineoldandroids/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# instance fields
.field h:Lcom/nineoldandroids/animation/IntKeyframeSet;

.field i:I

.field private j:Lcom/nineoldandroids/util/IntProperty;


# direct methods
.method public varargs constructor <init>(Lcom/nineoldandroids/util/Property;[I)V
    .registers 4

    .prologue
    .line 787
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/PropertyValuesHolder$1;)V

    .line 788
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->a([I)V

    .line 789
    instance-of v0, p1, Lcom/nineoldandroids/util/IntProperty;

    if-eqz v0, :cond_11

    .line 790
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->b:Lcom/nineoldandroids/util/Property;

    check-cast v0, Lcom/nineoldandroids/util/IntProperty;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->j:Lcom/nineoldandroids/util/IntProperty;

    .line 792
    :cond_11
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .registers 4

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/PropertyValuesHolder$1;)V

    .line 783
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->a([I)V

    .line 784
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .registers 2

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->e()Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .registers 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->h:Lcom/nineoldandroids/animation/IntKeyframeSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/IntKeyframeSet;->b(F)I

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->i:I

    .line 803
    return-void
.end method

.method a(Ljava/lang/Class;)V
    .registers 3

    .prologue
    .line 852
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->b:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_5

    .line 886
    :goto_4
    return-void

    .line 884
    :cond_5
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/Class;)V

    goto :goto_4
.end method

.method public varargs a([I)V
    .registers 3

    .prologue
    .line 796
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a([I)V

    .line 797
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->e:Lcom/nineoldandroids/animation/KeyframeSet;

    check-cast v0, Lcom/nineoldandroids/animation/IntKeyframeSet;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->h:Lcom/nineoldandroids/animation/IntKeyframeSet;

    .line 798
    return-void
.end method

.method b(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 826
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->j:Lcom/nineoldandroids/util/IntProperty;

    if-eqz v0, :cond_c

    .line 827
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->j:Lcom/nineoldandroids/util/IntProperty;

    iget v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->i:I

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/IntProperty;->a(Ljava/lang/Object;I)V

    .line 848
    :cond_b
    :goto_b
    return-void

    .line 830
    :cond_c
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->b:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_1c

    .line 831
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->b:Lcom/nineoldandroids/util/Property;

    iget v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/Property;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 838
    :cond_1c
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    .line 840
    :try_start_20
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 841
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->g:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_32} :catch_3f

    goto :goto_b

    .line 842
    :catch_33
    move-exception v0

    .line 843
    const-string/jumbo v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 844
    :catch_3f
    move-exception v0

    .line 845
    const-string/jumbo v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->e()Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 807
    iget v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .registers 3

    .prologue
    .line 812
    invoke-super {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 813
    iget-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->e:Lcom/nineoldandroids/animation/KeyframeSet;

    check-cast v1, Lcom/nineoldandroids/animation/IntKeyframeSet;

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->h:Lcom/nineoldandroids/animation/IntKeyframeSet;

    .line 814
    return-object v0
.end method
