.class public abstract Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;
.super Lcom/bzbs/marketplace/asynctask/http/AbstractCache;
.source "PointAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallbackModel"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/AbstractCache;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;[BLcom/bzbs/marketplace/model/PointModel;)V
.end method
