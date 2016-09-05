.class Lcom/journeyapps/barcodescanner/CameraPreview$5;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .registers 2

    .prologue
    .line 294
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->e(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 298
    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->a()V

    goto :goto_a

    .line 300
    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->e(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 320
    invoke-interface {v0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->a(Ljava/lang/Exception;)V

    goto :goto_a

    .line 322
    :cond_1a
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->e(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 305
    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->b()V

    goto :goto_a

    .line 308
    :cond_1a
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->e(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 313
    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->c()V

    goto :goto_a

    .line 315
    :cond_1a
    return-void
.end method
