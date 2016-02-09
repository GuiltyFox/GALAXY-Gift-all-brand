.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$2;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const/4 v1, 0x0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Campaign(Z)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Z)V

    .line 307
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Info()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$5(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 308
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Description()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$6(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 309
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Condition()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$7(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 310
    return-void
.end method
