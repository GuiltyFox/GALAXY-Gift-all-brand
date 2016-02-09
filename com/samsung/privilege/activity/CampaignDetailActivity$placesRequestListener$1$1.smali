.class Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1$1;->val$response_text:Ljava/lang/String;

    .line 3280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1$1;->val$response_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->gLoadMore:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)Z

    move-result v2

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->ProcessJsonPlace(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$23(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;Z)V

    .line 3284
    return-void
.end method
