.class Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 6

    .prologue
    .line 1825
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->F(Landroid/view/View;)F

    move-result v0

    .line 1826
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->F(Landroid/view/View;)F

    move-result v1

    .line 1827
    cmpl-float v2, v0, v1

    if-lez v2, :cond_e

    .line 1828
    const/4 v0, -0x1

    .line 1832
    :goto_d
    return v0

    .line 1829
    :cond_e
    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 1830
    const/4 v0, 0x1

    goto :goto_d

    .line 1832
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1822
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
