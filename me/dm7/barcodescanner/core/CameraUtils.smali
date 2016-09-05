.class public Lme/dm7/barcodescanner/core/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# direct methods
.method public static a()Landroid/hardware/Camera;
    .registers 1

    .prologue
    .line 10
    const/4 v0, -0x1

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraUtils;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Landroid/hardware/Camera;
    .registers 3

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 17
    const/4 v1, -0x1

    if-ne p0, v1, :cond_9

    .line 18
    :try_start_4
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 26
    :goto_8
    return-object v0

    .line 20
    :cond_9
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_e

    move-result-object v0

    goto :goto_8

    .line 23
    :catch_e
    move-exception v1

    goto :goto_8
.end method

.method public static a(Landroid/hardware/Camera;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    if-eqz p0, :cond_33

    .line 32
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    move v0, v1

    .line 46
    :goto_f
    return v0

    .line 38
    :cond_10
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_31
    move v0, v1

    .line 40
    goto :goto_f

    :cond_33
    move v0, v1

    .line 43
    goto :goto_f

    :cond_35
    move v0, v2

    .line 46
    goto :goto_f
.end method
