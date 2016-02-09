.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$17;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogSentByPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$17;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$17;->val$dialogSerial:Landroid/app/Dialog;

    .line 2310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2312
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$17;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2314
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$17;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$17;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V

    .line 2320
    return-void
.end method
