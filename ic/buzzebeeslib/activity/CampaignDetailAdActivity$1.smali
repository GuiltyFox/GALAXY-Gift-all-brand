.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;
.super Landroid/os/Handler;
.source "CampaignDetailAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    .line 1259
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lic/buzzebeeslib/control/download/DownloadRequest;

    .line 1263
    .local v0, "request":Lic/buzzebeeslib/control/download/DownloadRequest;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_33

    .line 1264
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1265
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$id;->contentLoader:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatch:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1267
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iget-boolean v2, v2, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->resume_:Z

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->updateItemView(Lic/buzzebeeslib/control/download/DownloadRequest;Z)V
    invoke-static {v1, v0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$2(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/control/download/DownloadRequest;Z)V

    .line 1284
    :cond_32
    :goto_32
    return-void

    .line 1268
    :cond_33
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_56

    .line 1269
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1270
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$id;->contentLoader:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatch:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_32

    .line 1272
    :cond_56
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_84

    .line 1273
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1274
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$id;->contentLoader:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatch:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1276
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "RESUME"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 1277
    :cond_84
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_32

    .line 1278
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1279
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$id;->contentLoader:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatch:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_32
.end method
