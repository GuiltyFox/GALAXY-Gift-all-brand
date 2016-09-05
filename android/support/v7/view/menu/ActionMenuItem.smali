.class public Landroid/support/v7/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


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

.field private l:Landroid/content/Context;

.field private m:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .registers 8

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->k:I

    .line 56
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 65
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    .line 66
    iput p3, p0, Landroid/support/v7/view/menu/ActionMenuItem;->a:I

    .line 67
    iput p2, p0, Landroid/support/v7/view/menu/ActionMenuItem;->b:I

    .line 68
    iput p4, p0, Landroid/support/v7/view/menu/ActionMenuItem;->c:I

    .line 69
    iput p5, p0, Landroid/support/v7/view/menu/ActionMenuItem;->d:I

    .line 70
    iput-object p6, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    .line 71
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    .prologue
    .line 294
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a()Landroid/support/v4/view/ActionProvider;
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 268
    return-object p0
.end method

.method public collapseActionView()Z
    .registers 2

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 74
    iget-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->i:C

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 98
    iget-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->h:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->d:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->f:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

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
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->a(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 138
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->i:C

    .line 139
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 143
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 144
    return-object p0

    .line 143
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 153
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_b

    const/4 v0, 0x2

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 154
    return-object p0

    .line 153
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 158
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_c

    const/16 v0, 0x10

    :goto_8
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 159
    return-object p0

    .line 158
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 169
    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->k:I

    .line 170
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->j:Landroid/graphics/drawable/Drawable;

    .line 171
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->j:Landroid/graphics/drawable/Drawable;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->k:I

    .line 165
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->g:Landroid/content/Intent;

    .line 176
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 180
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->h:C

    .line 181
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->m:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 186
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 190
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->h:C

    .line 191
    iput-char p2, p0, Landroid/support/v7/view/menu/ActionMenuItem;->i:C

    .line 192
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2

    .prologue
    .line 230
    return-void
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->b(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    .line 202
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    .line 197
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->f:Ljava/lang/CharSequence;

    .line 207
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 211
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 212
    return-object p0

    .line 211
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method
