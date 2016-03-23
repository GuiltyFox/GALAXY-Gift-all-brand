.class Lcom/samsung/privilege/activity/RequestHelpActivity$1;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "RequestHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;->getCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/RequestHelpActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$1;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "errorResponse"    # [B
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 136
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_3f

    if-eqz p3, :cond_3f

    .line 137
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    const-class v3, Lcom/bzbs/marketplace/model/CodeModel;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/CodeModel;

    .line 138
    .local v0, "code":Lcom/bzbs/marketplace/model/CodeModel;
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$1;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/RequestHelpActivity;->tvCode:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/CodeModel;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$1;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/RequestHelpActivity;->contentCode:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    .end local v0    # "code":Lcom/bzbs/marketplace/model/CodeModel;
    :cond_3f
    return-void
.end method
