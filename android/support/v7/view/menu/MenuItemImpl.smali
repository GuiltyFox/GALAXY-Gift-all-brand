.class public final Landroid/support/v7/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# static fields
.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:C

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Landroid/support/v7/view/menu/MenuBuilder;

.field private m:Landroid/support/v7/view/menu/SubMenuBuilder;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private p:I

.field private q:I

.field private r:Landroid/view/View;

.field private s:Landroid/support/v4/view/ActionProvider;

.field private t:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private u:Z

.field private v:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:I

    .line 76
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 84
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:I

    .line 89
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->u:Z

    .line 133
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    .line 134
    iput p3, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:I

    .line 135
    iput p2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->b:I

    .line 136
    iput p4, p0, Landroid/support/v7/view/menu/MenuItemImpl;->c:I

    .line 137
    iput p5, p0, Landroid/support/v7/view/menu/MenuItemImpl;->d:I

    .line 138
    iput-object p6, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:Ljava/lang/CharSequence;

    .line 139
    iput p7, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:I

    .line 140
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/MenuItemImpl;)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 5

    .prologue
    .line 619
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 620
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 621
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    .line 622
    return-object p0
.end method

.method public a(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4

    .prologue
    .line 656
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_9

    .line 657
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->reset()V

    .line 659
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    .line 660
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    .line 661
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 662
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_22

    .line 663
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    new-instance v1, Landroid/support/v7/view/menu/MenuItemImpl$1;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/MenuItemImpl$1;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    .line 670
    :cond_22
    return-object p0
.end method

.method public a(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    .prologue
    .line 714
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->t:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 715
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4

    .prologue
    .line 608
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    .line 610
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:I

    if-lez v0, :cond_17

    .line 611
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 613
    :cond_17
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 614
    return-object p0
.end method

.method public a()Landroid/support/v4/view/ActionProvider;
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method a(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 362
    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/support/v7/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c
.end method

.method public a(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .registers 3

    .prologue
    .line 344
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 346
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 347
    return-void
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .prologue
    .line 545
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 546
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 468
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 469
    return-void

    .line 468
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 676
    return-object p0
.end method

.method b(Z)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 494
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 495
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_17

    const/4 v0, 0x2

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 496
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    if-eq v2, v0, :cond_16

    .line 497
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 499
    :cond_16
    return-void

    :cond_17
    move v0, v1

    .line 495
    goto :goto_a
.end method

.method public b()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 148
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 174
    :cond_d
    :goto_d
    return v0

    .line 152
    :cond_e
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 156
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_26

    .line 157
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->n:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 161
    :cond_26
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->g:Landroid/content/Intent;

    if-eqz v1, :cond_40

    .line 163
    :try_start_2a
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_d

    .line 165
    :catch_36
    move-exception v1

    .line 166
    const-string/jumbo v2, "MenuItemImpl"

    const-string/jumbo v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :cond_40
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v1

    if-nez v1, :cond_d

    .line 174
    :cond_4c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->d:I

    return v0
.end method

.method c(Z)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 518
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 519
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_13

    move v0, v1

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 520
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    if-eq v2, v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    .line 519
    :cond_13
    const/16 v0, 0x8

    goto :goto_a
.end method

.method public collapseActionView()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 695
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    .line 708
    :cond_7
    :goto_7
    return v0

    .line 698
    :cond_8
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    if-nez v1, :cond_e

    .line 700
    const/4 v0, 0x1

    goto :goto_7

    .line 703
    :cond_e
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->t:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->t:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 705
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_7
.end method

.method d()C
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:C

    :goto_a
    return v0

    :cond_b
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->h:C

    goto :goto_a
.end method

.method public d(Z)V
    .registers 3

    .prologue
    .line 577
    if-eqz p1, :cond_9

    .line 578
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 582
    :goto_8
    return-void

    .line 580
    :cond_9
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    goto :goto_8
.end method

.method e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->d()C

    move-result v0

    .line 296
    if-nez v0, :cond_a

    .line 297
    const-string/jumbo v0, ""

    .line 320
    :goto_9
    return-object v0

    .line 300
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/view/menu/MenuItemImpl;->w:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    sparse-switch v0, :sswitch_data_2e

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    :goto_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 304
    :sswitch_1c
    sget-object v0, Landroid/support/v7/view/menu/MenuItemImpl;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 308
    :sswitch_22
    sget-object v0, Landroid/support/v7/view/menu/MenuItemImpl;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 312
    :sswitch_28
    sget-object v0, Landroid/support/v7/view/menu/MenuItemImpl;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 301
    :sswitch_data_2e
    .sparse-switch
        0x8 -> :sswitch_22
        0xa -> :sswitch_1c
        0x20 -> :sswitch_28
    .end sparse-switch
.end method

.method public e(Z)V
    .registers 4

    .prologue
    .line 729
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->u:Z

    .line 730
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 731
    return-void
.end method

.method public expandActionView()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->n()Z

    move-result v1

    if-nez v1, :cond_8

    .line 690
    :cond_7
    :goto_7
    return v0

    .line 685
    :cond_8
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->t:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->t:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 687
    :cond_14
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_7
.end method

.method f()Z
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->d()C

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 472
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    .prologue
    .line 645
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 628
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    .line 633
    :goto_6
    return-object v0

    .line 629
    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_16

    .line 630
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    .line 631
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    goto :goto_6

    .line 633
    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 237
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:C

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 417
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->j:Landroid/graphics/drawable/Drawable;

    .line 428
    :goto_6
    return-object v0

    .line 420
    :cond_7
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:I

    if-eqz v0, :cond_21

    .line 421
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 423
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:I

    .line 424
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 428
    :cond_21
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 255
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->h:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:Landroid/support/v7/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->f:Ljava/lang/CharSequence;

    .line 389
    :goto_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_16

    if-eqz v0, :cond_16

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 393
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_16
    return-object v0

    .line 387
    :cond_17
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method public h()V
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 555
    return-void
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .prologue
    .line 735
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->u:Z

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 453
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isChecked()Z
    .registers 3

    .prologue
    .line 477
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isVisible()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 504
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1d

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 506
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 504
    goto :goto_1c

    .line 506
    :cond_1f
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1c

    move v0, v1

    goto :goto_1c
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 565
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public k()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 569
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 573
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public m()Z
    .registers 3

    .prologue
    .line 585
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public n()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 719
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1c

    .line 720
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    if-nez v1, :cond_17

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_17

    .line 721
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    .line 723
    :cond_17
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/View;

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 725
    :cond_1c
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 639
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->a(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 242
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:C

    if-ne v0, p1, :cond_5

    .line 250
    :goto_4
    return-object p0

    .line 246
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:C

    .line 248
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_4
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 458
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 459
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 460
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    if-eq v2, v0, :cond_16

    .line 461
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 464
    :cond_16
    return-object p0

    :cond_17
    move v0, v1

    .line 459
    goto :goto_a
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 482
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 485
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 490
    :goto_b
    return-object p0

    .line 487
    :cond_c
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->b(Z)V

    goto :goto_b
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 184
    if-eqz p1, :cond_f

    .line 185
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    .line 190
    :goto_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 192
    return-object p0

    .line 187
    :cond_f
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:I

    goto :goto_8
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->j:Landroid/graphics/drawable/Drawable;

    .line 443
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:I

    .line 446
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 448
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 433
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:I

    .line 434
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->j:Landroid/graphics/drawable/Drawable;

    .line 435
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 437
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->g:Landroid/content/Intent;

    .line 223
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 260
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->h:C

    if-ne v0, p1, :cond_5

    .line 268
    :goto_4
    return-object p0

    .line 264
    :cond_5
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->h:C

    .line 266
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_4
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 535
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 536
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 5

    .prologue
    .line 273
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->h:C

    .line 274
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:C

    .line 276
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 278
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4

    .prologue
    .line 590
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_16

    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :pswitch_e
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:I

    .line 603
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 604
    return-void

    .line 590
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->b(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 369
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:Ljava/lang/CharSequence;

    .line 371
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 373
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_11

    .line 374
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 377
    :cond_11
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 402
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->f:Ljava/lang/CharSequence;

    .line 405
    if-nez p1, :cond_6

    .line 406
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:Ljava/lang/CharSequence;

    .line 409
    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 411
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 530
    :cond_b
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
