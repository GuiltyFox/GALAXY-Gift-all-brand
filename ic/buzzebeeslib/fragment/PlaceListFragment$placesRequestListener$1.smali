.class Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;
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

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;->val$response_text:Ljava/lang/String;

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;)Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 819
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1$1;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1$1;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    return-void
.end method
