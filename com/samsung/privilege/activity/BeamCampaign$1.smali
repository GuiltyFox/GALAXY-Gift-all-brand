.class Lcom/samsung/privilege/activity/BeamCampaign$1;
.super Landroid/os/Handler;
.source "BeamCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/BeamCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/BeamCampaign;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/BeamCampaign;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/BeamCampaign$1;->this$0:Lcom/samsung/privilege/activity/BeamCampaign;

    .line 161
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 173
    :goto_5
    return-void

    .line 166
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign$1;->this$0:Lcom/samsung/privilege/activity/BeamCampaign;

    # getter for: Lcom/samsung/privilege/activity/BeamCampaign;->gLayoutWait:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/privilege/activity/BeamCampaign;->access$0(Lcom/samsung/privilege/activity/BeamCampaign;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign$1;->this$0:Lcom/samsung/privilege/activity/BeamCampaign;

    # getter for: Lcom/samsung/privilege/activity/BeamCampaign;->gLayoutComplete:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/privilege/activity/BeamCampaign;->access$1(Lcom/samsung/privilege/activity/BeamCampaign;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign$1;->this$0:Lcom/samsung/privilege/activity/BeamCampaign;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/BeamCampaign;->access$2(Lcom/samsung/privilege/activity/BeamCampaign;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign$1;->this$0:Lcom/samsung/privilege/activity/BeamCampaign;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/BeamCampaign;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Done sent!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 164
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
