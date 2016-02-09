.class Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$2;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1079
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->doGotoMap(Landroid/view/View;)V

    .line 1080
    return-void
.end method
