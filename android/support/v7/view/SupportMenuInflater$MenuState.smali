.class Landroid/support/v7/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# instance fields
.field final synthetic a:Landroid/support/v7/view/SupportMenuInflater;

.field private b:Landroid/view/Menu;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:C

.field private p:C

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/support/v4/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
    .registers 3

    .prologue
    .line 329
    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a:Landroid/support/v7/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->b:Landroid/view/Menu;

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a()V

    .line 333
    return-void
.end method

.method private a(Ljava/lang/String;)C
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 417
    if-nez p1, :cond_4

    .line 420
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3
.end method

.method static synthetic a(Landroid/support/v7/view/SupportMenuInflater$MenuState;)Landroid/support/v4/view/ActionProvider;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->z:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 497
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a:Landroid/support/v7/view/SupportMenuInflater;

    invoke-static {v0}, Landroid/support/v7/view/SupportMenuInflater;->a(Landroid/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 498
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 500
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    .line 504
    :goto_1a
    return-object v0

    .line 501
    :catch_1b
    move-exception v0

    .line 502
    const-string/jumbo v1, "SupportMenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot instantiate class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private a(Landroid/view/MenuItem;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 425
    iget-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->r:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->s:Z

    .line 426
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->t:Z

    .line 427
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->q:I

    if-lt v0, v1, :cond_56

    move v0, v1

    .line 428
    :goto_19
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->m:Ljava/lang/CharSequence;

    .line 429
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->n:I

    .line 430
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->o:C

    .line 431
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->p:C

    .line 432
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 434
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->u:I

    if-ltz v0, :cond_3d

    .line 435
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->u:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->a(Landroid/view/MenuItem;I)V

    .line 438
    :cond_3d
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->y:Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 439
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a:Landroid/support/v7/view/SupportMenuInflater;

    invoke-static {v0}, Landroid/support/v7/view/SupportMenuInflater;->a(Landroid/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    move v0, v2

    .line 427
    goto :goto_19

    .line 443
    :cond_58
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a:Landroid/support/v7/view/SupportMenuInflater;

    .line 444
    invoke-static {v3}, Landroid/support/v7/view/SupportMenuInflater;->c(Landroid/support/v7/view/SupportMenuInflater;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->y:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 447
    :cond_68
    instance-of v0, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_6f

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 448
    :cond_6f
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->q:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_7e

    .line 449
    instance-of v0, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_ac

    move-object v0, p1

    .line 450
    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Z)V

    .line 457
    :cond_7e
    :goto_7e
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->w:Ljava/lang/String;

    if-eqz v0, :cond_c1

    .line 458
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->w:Ljava/lang/String;

    .line 459
    invoke-static {}, Landroid/support/v7/view/SupportMenuInflater;->b()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a:Landroid/support/v7/view/SupportMenuInflater;

    invoke-static {v3}, Landroid/support/v7/view/SupportMenuInflater;->d(Landroid/support/v7/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v3

    .line 458
    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 460
    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 463
    :goto_97
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->v:I

    if-lez v0, :cond_a2

    .line 464
    if-nez v1, :cond_b7

    .line 465
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->v:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 472
    :cond_a2
    :goto_a2
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->z:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_ab

    .line 473
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->z:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->a(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 475
    :cond_ab
    return-void

    .line 451
    :cond_ac
    instance-of v0, p1, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_7e

    move-object v0, p1

    .line 452
    check-cast v0, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->a(Z)V

    goto :goto_7e

    .line 468
    :cond_b7
    const-string/jumbo v0, "SupportMenuInflater"

    const-string/jumbo v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :cond_c1
    move v1, v2

    goto :goto_97
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->c:I

    .line 337
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->d:I

    .line 338
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->e:I

    .line 339
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->f:I

    .line 340
    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->g:Z

    .line 341
    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->h:Z

    .line 342
    return-void
.end method

.method public a(Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a:Landroid/support/v7/view/SupportMenuInflater;

    invoke-static {v0}, Landroid/support/v7/view/SupportMenuInflater;->a(Landroid/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 350
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->c:I

    .line 351
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->d:I

    .line 353
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->e:I

    .line 354
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->f:I

    .line 356
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_visible:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->g:Z

    .line 357
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->h:Z

    .line 359
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 360
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->i:Z

    .line 479
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->b:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->c:I

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->j:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->k:I

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a(Landroid/view/MenuItem;)V

    .line 480
    return-void
.end method

.method public b(Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a:Landroid/support/v7/view/SupportMenuInflater;

    invoke-static {v0}, Landroid/support/v7/view/SupportMenuInflater;->a(Landroid/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 369
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_id:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->j:I

    .line 370
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->d:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 371
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 372
    const/high16 v5, -0x10000

    and-int/2addr v0, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->k:I

    .line 374
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->l:Ljava/lang/CharSequence;

    .line 375
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->m:Ljava/lang/CharSequence;

    .line 376
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->n:I

    .line 377
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 378
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->o:C

    .line 379
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 380
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->p:C

    .line 381
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 383
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_e0

    move v0, v1

    :goto_71
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->q:I

    .line 389
    :goto_73
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->r:Z

    .line 390
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->g:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->s:Z

    .line 391
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->h:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->t:Z

    .line 392
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->u:I

    .line 393
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->y:Ljava/lang/String;

    .line 394
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->v:I

    .line 395
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->w:Ljava/lang/String;

    .line 396
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->x:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->x:Ljava/lang/String;

    if-eqz v0, :cond_e7

    .line 399
    :goto_bc
    if-eqz v1, :cond_e9

    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->v:I

    if-nez v0, :cond_e9

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->w:Ljava/lang/String;

    if-nez v0, :cond_e9

    .line 400
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->x:Ljava/lang/String;

    .line 401
    invoke-static {}, Landroid/support/v7/view/SupportMenuInflater;->a()[Ljava/lang/Class;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a:Landroid/support/v7/view/SupportMenuInflater;

    .line 402
    invoke-static {v4}, Landroid/support/v7/view/SupportMenuInflater;->b(Landroid/support/v7/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v4

    .line 400
    invoke-direct {p0, v0, v1, v4}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ActionProvider;

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->z:Landroid/support/v4/view/ActionProvider;

    .line 411
    :goto_da
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 413
    iput-boolean v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->i:Z

    .line 414
    return-void

    :cond_e0
    move v0, v2

    .line 383
    goto :goto_71

    .line 387
    :cond_e2
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->f:I

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->q:I

    goto :goto_73

    :cond_e7
    move v1, v2

    .line 398
    goto :goto_bc

    .line 404
    :cond_e9
    if-eqz v1, :cond_f4

    .line 405
    const-string/jumbo v0, "SupportMenuInflater"

    const-string/jumbo v1, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_f4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->z:Landroid/support/v4/view/ActionProvider;

    goto :goto_da
.end method

.method public c()Landroid/view/SubMenu;
    .registers 6

    .prologue
    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->i:Z

    .line 484
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->b:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->c:I

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->j:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->k:I

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->a(Landroid/view/MenuItem;)V

    .line 486
    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 490
    iget-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->i:Z

    return v0
.end method
