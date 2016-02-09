.class public final Lcom/google/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/CaptureActivity;

.field private final cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final decodeThread:Lcom/google/zxing/client/android/DecodeThread;

.field private state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V
    .registers 12
    .param p1, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .param p4, "characterSet"    # Ljava/lang/String;
    .param p5, "cameraManager"    # Lcom/google/zxing/client/android/camera/CameraManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/CaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/client/android/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .local p3, "baseHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    .line 61
    new-instance v0, Lcom/google/zxing/client/android/DecodeThread;

    new-instance v5, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/CaptureActivity;->getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/android/DecodeThread;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    .line 62
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/DecodeThread;->start()V

    .line 63
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 66
    iput-object p5, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 67
    invoke-virtual {p5}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 68
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 69
    return-void
.end method

.method private restartPreviewAndDecode()V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_1c

    .line 215
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 216
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/google/zxing/client/android/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 217
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->drawViewfinder()V

    .line 219
    :cond_1c
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 138
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/google/zxing/client/android/R$id;->restart_preview:I

    if-ne v9, v10, :cond_11

    .line 139
    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v10, "Got restart preview message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 194
    :cond_10
    :goto_10
    return-void

    .line 141
    :cond_11
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/google/zxing/client/android/R$id;->decode_succeeded:I

    if-ne v9, v10, :cond_51

    .line 142
    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v10, "Got decode succeeded message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v9, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 144
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 145
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 146
    .local v0, "barcode":Landroid/graphics/Bitmap;
    const/high16 v7, 0x3f800000

    .line 147
    .local v7, "scaleFactor":F
    if-eqz v2, :cond_47

    .line 148
    const-string v9, "barcode_bitmap"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 149
    .local v3, "compressedBitmap":[B
    if-eqz v3, :cond_41

    .line 150
    const/4 v9, 0x0

    array-length v10, v3

    const/4 v11, 0x0

    invoke-static {v3, v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    :cond_41
    const-string v9, "barcode_scaled_factor"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    .line 156
    .end local v3    # "compressedBitmap":[B
    :cond_47
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/google/zxing/Result;

    invoke-virtual {v10, v9, v0, v7}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    goto :goto_10

    .line 157
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "scaleFactor":F
    :cond_51
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/google/zxing/client/android/R$id;->decode_failed:I

    if-ne v9, v10, :cond_69

    .line 159
    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v9, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 160
    iget-object v9, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    sget v11, Lcom/google/zxing/client/android/R$id;->decode:I

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_10

    .line 161
    :cond_69
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/google/zxing/client/android/R$id;->return_scan_result:I

    if-ne v9, v10, :cond_86

    .line 162
    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v10, "Got return scan result message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    const/4 v11, -0x1

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    invoke-virtual {v10, v11, v9}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 164
    iget-object v9, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v9}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_10

    .line 165
    :cond_86
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/google/zxing/client/android/R$id;->launch_product_query:I

    if-ne v9, v10, :cond_10

    .line 166
    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v10, "Got product query message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 169
    .local v8, "url":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x80000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    iget-object v9, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v9}, Lcom/google/zxing/client/android/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/high16 v10, 0x10000

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 174
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .line 175
    .local v1, "browserPackageName":Ljava/lang/String;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_d3

    .line 176
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 177
    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Using browser in package "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_d3
    const-string v9, "com.android.browser"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e3

    const-string v9, "com.android.chrome"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 182
    :cond_e3
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    const-string v9, "com.android.browser.application_id"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_f0
    :try_start_f0
    iget-object v9, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v9, v5}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_f5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f0 .. :try_end_f5} :catch_f7

    goto/16 :goto_10

    .line 189
    :catch_f7
    move-exception v4

    .line 190
    .local v4, "ignored":Landroid/content/ActivityNotFoundException;
    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t find anything to handle VIEW of URI "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10
.end method

.method public quitSynchronously()V
    .registers 5

    .prologue
    .line 197
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 198
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 199
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/google/zxing/client/android/R$id;->quit:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    :try_start_18
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/DecodeThread;->join(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1f} :catch_2a

    .line 209
    :goto_1f
    sget v1, Lcom/google/zxing/client/android/R$id;->decode_succeeded:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 210
    sget v1, Lcom/google/zxing/client/android/R$id;->decode_failed:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 211
    return-void

    .line 204
    :catch_2a
    move-exception v1

    goto :goto_1f
.end method
