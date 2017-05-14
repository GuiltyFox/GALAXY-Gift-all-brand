.class Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# instance fields
.field public final a:Landroid/support/v7/widget/MenuPopupWindow;

.field public final b:Landroid/support/v7/view/menu/MenuBuilder;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/MenuPopupWindow;Landroid/support/v7/view/menu/MenuBuilder;I)V
    .registers 4

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    .line 742
    iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    .line 743
    iput p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->c:I

    .line 744
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
