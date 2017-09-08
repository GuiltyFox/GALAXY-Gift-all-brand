.class Lcom/samsung/privilege/activity/RequestHelpActivity$1;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "RequestHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;->q()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/RequestHelpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$1;->a:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 150
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3f

    if-eqz p3, :cond_3f

    .line 151
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/CodeModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/CodeModel;

    .line 152
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$1;->a:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/RequestHelpActivity;->tvCode:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/CodeModel;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$1;->a:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/RequestHelpActivity;->contentCode:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    :cond_3f
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 160
    return-void
.end method
