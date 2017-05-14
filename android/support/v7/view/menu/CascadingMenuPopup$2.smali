.class Landroid/support/v7/view/menu/CascadingMenuPopup$2;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/CascadingMenuPopup;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 128
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->c(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_16
    if-ge v2, v4, :cond_61

    .line 133
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_2c

    move v0, v2

    .line 139
    :goto_29
    if-ne v0, v3, :cond_2f

    .line 172
    :goto_2b
    return-void

    .line 132
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 144
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    .line 145
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5f

    .line 146
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 151
    :goto_49
    new-instance v1, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;

    invoke-direct {v1, p0, v0, p2, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup$2;Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    .line 171
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->c(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_2b

    :cond_5f
    move-object v0, v1

    .line 148
    goto :goto_49

    :cond_61
    move v0, v3

    goto :goto_29
.end method

.method public onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->c(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    return-void
.end method
