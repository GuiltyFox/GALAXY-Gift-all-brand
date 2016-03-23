.class public Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;
.super Ljava/lang/Object;
.source "OrientationUtil.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;,
        Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$OrientationListener;
    }
.end annotation


# instance fields
.field private mCurrentSide:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

.field private mListener:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$OrientationListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 34
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 35
    return-void
.end method

.method public static getRotationAnimation(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;)Landroid/view/animation/Animation;
    .registers 11
    .param p0, "oldside"    # Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;
    .param p1, "newside"    # Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    .prologue
    const/16 v2, 0x10e

    const/4 v1, 0x0

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "retval":Landroid/view/animation/RotateAnimation;
    if-eqz p0, :cond_b

    if-nez p1, :cond_14

    .line 93
    :cond_b
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0    # "retval":Landroid/view/animation/RotateAnimation;
    move v2, v1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 119
    .restart local v0    # "retval":Landroid/view/animation/RotateAnimation;
    :goto_13
    return-object v0

    .line 99
    :cond_14
    invoke-static {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->toDegrees(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;)I

    move-result v8

    .line 100
    .local v8, "olddegree":I
    invoke-static {p1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->toDegrees(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;)I

    move-result v7

    .line 101
    .local v7, "newdegree":I
    if-nez v8, :cond_3f

    if-ne v7, v2, :cond_3f

    .line 102
    const/16 v7, -0x5a

    .line 106
    :cond_22
    :goto_22
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0    # "retval":Landroid/view/animation/RotateAnimation;
    int-to-float v1, v8

    int-to-float v2, v7

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 113
    .restart local v0    # "retval":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 114
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 115
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 116
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_13

    .line 103
    :cond_3f
    if-ne v8, v2, :cond_22

    if-nez v7, :cond_22

    .line 104
    const/16 v7, 0x168

    goto :goto_22
.end method

.method public static toDegrees(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;)I
    .registers 4
    .param p0, "side"    # Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "degree":I
    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$1;->$SwitchMap$com$bzbs$lib$survey$control$devsmart$horlistview$devsmart$horlistview$devsmart$android$OrientationUtil$Side:[I

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 139
    :goto_c
    return v0

    .line 126
    :pswitch_d
    const/4 v0, 0x0

    .line 127
    goto :goto_c

    .line 129
    :pswitch_f
    const/16 v0, 0x5a

    .line 130
    goto :goto_c

    .line 132
    :pswitch_12
    const/16 v0, 0xb4

    .line 133
    goto :goto_c

    .line 135
    :pswitch_15
    const/16 v0, 0x10e

    goto :goto_c

    .line 124
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->stop()V

    .line 52
    return-void
.end method

.method public getOrientation()Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mCurrentSide:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v7, 0x42340000

    const/high16 v6, -0x3dcc0000

    .line 62
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 63
    .local v0, "azimuth":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v2, v4, v5

    .line 64
    .local v2, "pitch":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v3, v4, v5

    .line 66
    .local v3, "roll":F
    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;->TOP:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    .line 68
    .local v1, "newSide":Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;
    cmpg-float v4, v2, v6

    if-gez v4, :cond_35

    const/high16 v4, -0x3cf90000

    cmpl-float v4, v2, v4

    if-lez v4, :cond_35

    .line 70
    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;->TOP:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    .line 82
    :cond_21
    :goto_21
    iget-object v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mListener:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$OrientationListener;

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mCurrentSide:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    invoke-virtual {v1, v4}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 83
    iget-object v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mListener:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$OrientationListener;

    invoke-interface {v4, v1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$OrientationListener;->onOrientationChanged(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;)V

    .line 84
    iput-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mCurrentSide:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    .line 87
    :cond_34
    return-void

    .line 71
    :cond_35
    cmpl-float v4, v2, v7

    if-lez v4, :cond_42

    const/high16 v4, 0x43070000

    cmpg-float v4, v2, v4

    if-gez v4, :cond_42

    .line 73
    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;->BOTTOM:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    goto :goto_21

    .line 74
    :cond_42
    cmpl-float v4, v3, v7

    if-lez v4, :cond_49

    .line 76
    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;->RIGHT:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    goto :goto_21

    .line 77
    :cond_49
    cmpg-float v4, v3, v6

    if-gez v4, :cond_21

    .line 79
    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;->LEFT:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$Side;

    goto :goto_21
.end method

.method public setListener(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$OrientationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$OrientationListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mListener:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil$OrientationListener;

    .line 39
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/OrientationUtil;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 43
    return-void
.end method
