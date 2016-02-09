.class Lic/buzzebeeslib/fragment/PlaceListFragment$4$2$1;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2$1;->this$2:Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2$1;->this$2:Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;)Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->getLocationByGPS()V
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$30(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    .line 565
    return-void
.end method
