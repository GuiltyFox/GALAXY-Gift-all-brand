.class Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Lcom/nineoldandroids/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# instance fields
.field h:Lcom/nineoldandroids/animation/FloatKeyframeSet;

.field i:F

.field private j:Lcom/nineoldandroids/util/FloatProperty;


# direct methods
.method public varargs constructor <init>(Lcom/nineoldandroids/util/Property;[F)V
    .registers 4

    .prologue
    .line 923
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/PropertyValuesHolder$1;)V

    .line 924
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a([F)V

    .line 925
    instance-of v0, p1, Lcom/nineoldandroids/util/FloatProperty;

    if-eqz v0, :cond_11

    .line 926
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->b:Lcom/nineoldandroids/util/Property;

    check-cast v0, Lcom/nineoldandroids/util/FloatProperty;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->j:Lcom/nineoldandroids/util/FloatProperty;

    .line 928
    :cond_11
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .registers 4

    .prologue
    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/PropertyValuesHolder$1;)V

    .line 919
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a([F)V

    .line 920
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .registers 2

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e()Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .registers 3

    .prologue
    .line 938
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->h:Lcom/nineoldandroids/animation/FloatKeyframeSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/FloatKeyframeSet;->b(F)F

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->i:F

    .line 939
    return-void
.end method

.method a(Ljava/lang/Class;)V
    .registers 3

    .prologue
    .line 988
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->b:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_5

    .line 1022
    :goto_4
    return-void

    .line 1020
    :cond_5
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/Class;)V

    goto :goto_4
.end method

.method public varargs a([F)V
    .registers 3

    .prologue
    .line 932
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a([F)V

    .line 933
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e:Lcom/nineoldandroids/animation/KeyframeSet;

    check-cast v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->h:Lcom/nineoldandroids/animation/FloatKeyframeSet;

    .line 934
    return-void
.end method

.method b(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 962
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->j:Lcom/nineoldandroids/util/FloatProperty;

    if-eqz v0, :cond_c

    .line 963
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->j:Lcom/nineoldandroids/util/FloatProperty;

    iget v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->i:F

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/FloatProperty;->a(Ljava/lang/Object;F)V

    .line 984
    :cond_b
    :goto_b
    return-void

    .line 966
    :cond_c
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->b:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_1c

    .line 967
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->b:Lcom/nineoldandroids/util/Property;

    iget v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->i:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/Property;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 974
    :cond_1c
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    .line 976
    :try_start_20
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->i:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 977
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_32} :catch_3f

    goto :goto_b

    .line 978
    :catch_33
    move-exception v0

    .line 979
    const-string/jumbo v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 980
    :catch_3f
    move-exception v0

    .line 981
    const-string/jumbo v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e()Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 943
    iget v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->i:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .registers 3

    .prologue
    .line 948
    invoke-super {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 949
    iget-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e:Lcom/nineoldandroids/animation/KeyframeSet;

    check-cast v1, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->h:Lcom/nineoldandroids/animation/FloatKeyframeSet;

    .line 950
    return-object v0
.end method
