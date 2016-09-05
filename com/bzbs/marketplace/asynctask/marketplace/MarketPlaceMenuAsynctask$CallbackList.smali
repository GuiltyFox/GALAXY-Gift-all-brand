.class public abstract Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;
.super Lcom/bzbs/marketplace/asynctask/http/AbstractCache;
.source "MarketPlaceMenuAsynctask.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/AbstractCache;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
.end method

.method public abstract a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;",
            ">;)V"
        }
    .end annotation
.end method
