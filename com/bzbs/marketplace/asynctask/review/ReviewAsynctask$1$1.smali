.class Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ReviewAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/bzbs/marketplace/model/review/ReviewModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
