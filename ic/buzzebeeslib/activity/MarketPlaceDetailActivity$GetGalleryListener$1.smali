.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;

    .line 3239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3241
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Gallery()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$19(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 3242
    return-void
.end method
