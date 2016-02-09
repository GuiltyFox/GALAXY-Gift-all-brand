.class Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$1;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 886
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTvLoadingPage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$3(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->place_message_get_location_4:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    return-void
.end method
