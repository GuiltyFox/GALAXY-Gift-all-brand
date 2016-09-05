.class public final Lcom/google/zxing/client/android/AmbientLightManager;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/camera/CameraManager;

.field private b:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private c:Landroid/hardware/Sensor;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/journeyapps/barcodescanner/camera/CameraManager;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .registers 5

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->d:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/zxing/client/android/AmbientLightManager;->a:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 50
    iput-object p3, p0, Lcom/google/zxing/client/android/AmbientLightManager;->b:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->e:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/google/zxing/client/android/AmbientLightManager;)Lcom/journeyapps/barcodescanner/camera/CameraManager;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->a:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-object v0
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/zxing/client/android/AmbientLightManager$1;

    invoke-direct {v1, p0, p1}, Lcom/google/zxing/client/android/AmbientLightManager$1;-><init>(Lcom/google/zxing/client/android/AmbientLightManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->b:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->h()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 57
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->d:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 58
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->c:Landroid/hardware/Sensor;

    .line 59
    iget-object v1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->c:Landroid/hardware/Sensor;

    if-eqz v1, :cond_24

    .line 60
    iget-object v1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 63
    :cond_24
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_15

    .line 67
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->d:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 68
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->c:Landroid/hardware/Sensor;

    .line 71
    :cond_15
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 97
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 85
    iget-object v1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->a:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    if-eqz v1, :cond_13

    .line 86
    const/high16 v1, 0x42340000    # 45.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_14

    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/zxing/client/android/AmbientLightManager;->a(Z)V

    .line 92
    :cond_13
    :goto_13
    return-void

    .line 88
    :cond_14
    const/high16 v1, 0x43e10000    # 450.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13

    .line 89
    invoke-direct {p0, v2}, Lcom/google/zxing/client/android/AmbientLightManager;->a(Z)V

    goto :goto_13
.end method
