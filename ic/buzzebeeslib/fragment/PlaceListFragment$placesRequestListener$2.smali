.class Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$2;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 836
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTvLoadingPage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$3(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gPbLoadingPage:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$4(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 838
    return-void
.end method
