.class Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$2;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1074
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->doGotoMap(Landroid/view/View;)V

    .line 1075
    return-void
.end method
