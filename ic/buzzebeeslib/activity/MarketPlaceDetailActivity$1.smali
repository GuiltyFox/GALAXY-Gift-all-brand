.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 444
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    const/4 v1, 0x0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Campaign(Z)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V

    .line 445
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Info()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 446
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Description()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$5(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 447
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Condition()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$6(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 448
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->loadGallery()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$7(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 449
    return-void
.end method
