.class Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "ReviewGiftBlurDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

.field final synthetic b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;)V
    .registers 3

    .prologue
    .line 146
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 150
    const-string/jumbo v0, ""

    .line 151
    if-eqz p3, :cond_14

    .line 152
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 155
    :cond_14
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$1;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;)V

    .line 156
    invoke-virtual {v2}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$1;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 158
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->getBody()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$2;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$2;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;)V

    .line 159
    invoke-virtual {v2}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$2;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 160
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1054"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 161
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->getSubject_th()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    :goto_66
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;

    invoke-direct {v2, p0, v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void

    .line 163
    :cond_73
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->getSubject_en()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_66
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 207
    return-void
.end method
