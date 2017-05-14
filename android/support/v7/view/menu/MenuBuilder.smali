.class public Landroid/support/v7/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenu;


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 160
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 162
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 164
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 166
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 215
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 220
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 224
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 226
    invoke-direct {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 227
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 15

    .prologue
    .line 451
    new-instance v0, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/view/menu/MenuItemImpl;-><init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .registers 5

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 287
    :goto_8
    return-void

    .line 277
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 278
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 279
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 280
    if-nez v1, :cond_2c

    .line 281
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 283
    :cond_2c
    invoke-interface {v1, p1}, Landroid/support/v7/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_12

    .line 286
    :cond_30
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_8
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 335
    const-string/jumbo v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 337
    if-eqz v2, :cond_11

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 353
    :cond_11
    return-void

    .line 339
    :cond_12
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 340
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 341
    if-nez v1, :cond_32

    .line 342
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 344
    :cond_32
    invoke-interface {v1}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v0

    .line 345
    if-lez v0, :cond_18

    .line 346
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 347
    if-eqz v0, :cond_18

    .line 348
    invoke-interface {v1, v0}, Landroid/support/v7/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_18
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 332
    :goto_8
    return-void

    .line 314
    :cond_9
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 316
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 317
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 318
    if-nez v1, :cond_2e

    .line 319
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_14

    .line 321
    :cond_2e
    invoke-interface {v1}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v0

    .line 322
    if-lez v0, :cond_14

    .line 323
    invoke-interface {v1}, Landroid/support/v7/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_14

    .line 325
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_14

    .line 331
    :cond_3e
    const-string/jumbo v0, "android:menu:presenters"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_8
.end method

.method private dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 308
    :goto_9
    return v0

    .line 296
    :cond_a
    if-eqz p2, :cond_10

    .line 297
    invoke-interface {p2, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v0

    .line 300
    :cond_10
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 301
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 302
    if-nez v1, :cond_33

    .line 303
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :goto_31
    move v2, v0

    .line 307
    goto :goto_17

    .line 304
    :cond_33
    if-nez v2, :cond_3d

    .line 305
    invoke-interface {v1, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v2

    move v0, v2

    goto :goto_31

    :cond_3b
    move v0, v2

    .line 308
    goto :goto_9

    :cond_3d
    move v0, v2

    goto :goto_31
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 823
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_1c

    .line 824
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 825
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->c()I

    move-result v0

    if-gt v0, p1, :cond_18

    .line 826
    add-int/lit8 v0, v1, 0x1

    .line 830
    :goto_17
    return v0

    .line 823
    :cond_18
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    .line 830
    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static getOrdering(I)I
    .registers 3

    .prologue
    .line 756
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 758
    if-ltz v0, :cond_c

    sget-object v1, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_15

    .line 759
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "order does not contain a valid category."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_15
    sget-object v1, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method

.method private removeItemAtInt(IZ)V
    .registers 4

    .prologue
    .line 561
    if-ltz p1, :cond_a

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 566
    :cond_a
    :goto_a
    return-void

    .line 563
    :cond_b
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    if-eqz p2, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_a
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1190
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1192
    if-eqz p5, :cond_12

    .line 1193
    iput-object p5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1196
    iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1197
    iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1216
    :goto_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1217
    return-void

    .line 1199
    :cond_12
    if-lez p1, :cond_29

    .line 1200
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1205
    :cond_1a
    :goto_1a
    if-lez p3, :cond_2e

    .line 1206
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1212
    :cond_26
    :goto_26
    iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_d

    .line 1201
    :cond_29
    if-eqz p2, :cond_1a

    .line 1202
    iput-object p2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1a

    .line 1207
    :cond_2e
    if-eqz p4, :cond_26

    .line 1208
    iput-object p4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_26
.end method

.method private setShortcutsVisibleInner(Z)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 789
    if-eqz p1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 790
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_1a

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    sget v2, Landroid/support/v7/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 791
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    :goto_17
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 792
    return-void

    .line 791
    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6

    .prologue
    .line 466
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 18

    .prologue
    .line 501
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 502
    const/4 v0, 0x0

    .line 503
    invoke-virtual {v4, p4, p5, p6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 504
    if-eqz v5, :cond_61

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    .line 506
    :goto_12
    and-int/lit8 v0, p7, 0x1

    if-nez v0, :cond_19

    .line 507
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->removeGroup(I)V

    .line 510
    :cond_19
    const/4 v0, 0x0

    move v2, v0

    :goto_1b
    if-ge v2, v3, :cond_69

    .line 511
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 512
    new-instance v6, Landroid/content/Intent;

    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v1, :cond_64

    move-object v1, p6

    :goto_2a
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 514
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 517
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 518
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    .line 519
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v1

    .line 520
    if-eqz p8, :cond_5d

    iget v6, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v6, :cond_5d

    .line 521
    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v1, p8, v0

    .line 510
    :cond_5d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    .line 504
    :cond_61
    const/4 v0, 0x0

    move v3, v0

    goto :goto_12

    .line 512
    :cond_64
    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v1, p5, v1

    goto :goto_2a

    .line 525
    :cond_69
    return v3
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 12

    .prologue
    .line 432
    invoke-static {p3}, Landroid/support/v7/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v4

    .line 434
    iget v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    .line 437
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_18

    .line 439
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 442
    :cond_18
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 443
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 445
    return-object v0
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 242
    return-void
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {p1, p2, p0}, Landroid/support/v7/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 257
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .prologue
    .line 495
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 8

    .prologue
    .line 486
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 487
    new-instance v1, Landroid/support/v7/view/menu/SubMenuBuilder;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 488
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 490
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .registers 2

    .prologue
    .line 817
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_9

    .line 818
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 820
    :cond_9
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_9

    .line 584
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 586
    :cond_9
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 588
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 589
    return-void
.end method

.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 573
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 574
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 575
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->clearHeader()V

    .line 576
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 577
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 578
    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 579
    return-void
.end method

.method public clearHeader()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1181
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1182
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1183
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1186
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 1018
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 1019
    return-void
.end method

.method public final close(Z)V
    .registers 5

    .prologue
    .line 1002
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v0, :cond_5

    .line 1014
    :goto_4
    return-void

    .line 1004
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1005
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1006
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1007
    if-nez v1, :cond_28

    .line 1008
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1010
    :cond_28
    invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    goto :goto_e

    .line 1013
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_4
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1341
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eq v1, p1, :cond_e

    .line 1359
    :cond_d
    :goto_d
    return v0

    .line 1345
    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1346
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1347
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1348
    if-nez v1, :cond_34

    .line 1349
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :cond_32
    move v2, v0

    .line 1353
    goto :goto_18

    .line 1350
    :cond_34
    invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1354
    :goto_3a
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1356
    if-eqz v0, :cond_d

    .line 1357
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_d

    :cond_43
    move v0, v2

    goto :goto_3a
.end method

.method dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 810
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1319
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1337
    :cond_9
    :goto_9
    return v0

    .line 1323
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1324
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1325
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1326
    if-nez v1, :cond_30

    .line 1327
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :cond_2e
    move v2, v0

    .line 1331
    goto :goto_14

    .line 1328
    :cond_30
    invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1332
    :goto_36
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1334
    if-eqz v0, :cond_9

    .line 1335
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_9

    :cond_3e
    move v0, v2

    goto :goto_36
.end method

.method public findGroupIndex(I)I
    .registers 3

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .registers 6

    .prologue
    .line 705
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 707
    if-gez p2, :cond_7

    .line 708
    const/4 p2, 0x0

    :cond_7
    move v1, p2

    .line 711
    :goto_8
    if-ge v1, v2, :cond_1d

    .line 712
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 714
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_1a

    move v0, v1

    .line 719
    :goto_19
    return v0

    .line 711
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 719
    :cond_1d
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 671
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_2b

    .line 672
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 673
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_17

    .line 684
    :cond_16
    :goto_16
    return-object v0

    .line 675
    :cond_17
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 676
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 678
    if-nez v0, :cond_16

    .line 671
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 684
    :cond_2b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public findItemIndex(I)I
    .registers 5

    .prologue
    .line 688
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 690
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_1a

    .line 691
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 692
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    if-ne v0, p1, :cond_17

    move v0, v1

    .line 697
    :goto_16
    return v0

    .line 690
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 697
    :cond_1a
    const/4 v0, -0x1

    goto :goto_16
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 15

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 902
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 903
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 904
    invoke-virtual {p0, v5, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 906
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v2

    .line 937
    :cond_11
    :goto_11
    return-object v0

    .line 910
    :cond_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 911
    new-instance v7, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v7}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 913
    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 916
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 917
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2c

    .line 918
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_11

    .line 921
    :cond_2c
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v9

    move v3, v4

    .line 924
    :goto_31
    if-ge v3, v8, :cond_67

    .line 925
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 926
    if-eqz v9, :cond_62

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v1

    .line 928
    :goto_3f
    iget-object v10, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v10, v4

    if-ne v1, v10, :cond_49

    and-int/lit8 v10, v6, 0x2

    if-eqz v10, :cond_11

    :cond_49
    iget-object v10, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-ne v1, v10, :cond_54

    and-int/lit8 v10, v6, 0x2

    if-nez v10, :cond_11

    :cond_54
    if-eqz v9, :cond_5e

    const/16 v10, 0x8

    if-ne v1, v10, :cond_5e

    const/16 v1, 0x43

    if-eq p1, v1, :cond_11

    .line 924
    :cond_5e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_31

    .line 927
    :cond_62
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v1

    goto :goto_3f

    :cond_67
    move-object v0, v2

    .line 937
    goto :goto_11
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v10, 0x43

    const/4 v3, 0x0

    .line 858
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v4

    .line 859
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 860
    new-instance v6, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 862
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    .line 864
    if-nez v0, :cond_19

    if-eq p2, v10, :cond_19

    .line 886
    :cond_18
    return-void

    .line 869
    :cond_19
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    .line 870
    :goto_20
    if-ge v2, v7, :cond_18

    .line 871
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 872
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 873
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 875
    :cond_39
    if-eqz v4, :cond_67

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v1

    .line 876
    :goto_3f
    and-int/lit8 v8, v5, 0x5

    if-nez v8, :cond_63

    if-eqz v1, :cond_63

    iget-object v8, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v8, v8, v3

    if-eq v1, v8, :cond_5a

    iget-object v8, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v1, v8, :cond_5a

    if-eqz v4, :cond_63

    const/16 v8, 0x8

    if-ne v1, v8, :cond_63

    if-ne p2, v10, :cond_63

    .line 882
    :cond_5a
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 883
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_63
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_20

    .line 875
    :cond_67
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v1

    goto :goto_3f
.end method

.method public flagActionItems()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1131
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 1133
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v0, :cond_a

    .line 1168
    :goto_9
    return-void

    .line 1139
    :cond_a
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1140
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1141
    if-nez v1, :cond_2d

    .line 1142
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :goto_2b
    move v2, v0

    .line 1146
    goto :goto_11

    .line 1144
    :cond_2d
    invoke-interface {v1}, Landroid/support/v7/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_2b

    .line 1148
    :cond_33
    if-eqz v2, :cond_61

    .line 1149
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1150
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1151
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    .line 1152
    :goto_44
    if-ge v1, v2, :cond_74

    .line 1153
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1154
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->j()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1155
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    :goto_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    .line 1157
    :cond_5b
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 1163
    :cond_61
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1164
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1165
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1167
    :cond_74
    iput-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_9
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1171
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1172
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    const-string/jumbo v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 2

    .prologue
    .line 1363
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1280
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1288
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 729
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1176
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1177
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .registers 2

    .prologue
    .line 1315
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 802
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .registers 1

    .prologue
    .line 1296
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1086
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1101
    :goto_7
    return-object v0

    .line 1089
    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1091
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1093
    :goto_14
    if-ge v1, v3, :cond_2d

    .line 1094
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1095
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 1098
    :cond_2d
    iput-boolean v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1101
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_7
.end method

.method public hasVisibleItems()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 652
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    if-eqz v0, :cond_8

    move v0, v1

    .line 665
    :goto_7
    return v0

    .line 656
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    move v3, v2

    .line 658
    :goto_d
    if-ge v3, v4, :cond_23

    .line 659
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 660
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    .line 661
    goto :goto_7

    .line 658
    :cond_1f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    :cond_23
    move v0, v2

    .line 665
    goto :goto_7
.end method

.method isQwertyMode()Z
    .registers 2

    .prologue
    .line 769
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 734
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .prologue
    .line 798
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1080
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1081
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1082
    return-void
.end method

.method onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1069
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1070
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1071
    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1029
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_f

    .line 1030
    if-eqz p1, :cond_b

    .line 1031
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1032
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1035
    :cond_b
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1039
    :goto_e
    return-void

    .line 1037
    :cond_f
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_e
.end method

.method public performIdentifierAction(II)Z
    .registers 4

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 4

    .prologue
    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 951
    check-cast p1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 953
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    .line 990
    :cond_c
    :goto_c
    return v0

    .line 957
    :cond_d
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->b()Z

    move-result v3

    .line 959
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->a()Landroid/support/v4/view/ActionProvider;

    move-result-object v4

    .line 960
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v2

    .line 961
    :goto_1e
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->n()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 962
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v0

    or-int/2addr v0, v3

    .line 963
    if-eqz v0, :cond_c

    .line 964
    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_c

    :cond_2f
    move v1, v0

    .line 960
    goto :goto_1e

    .line 966
    :cond_31
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_39

    if-eqz v1, :cond_68

    .line 967
    :cond_39
    and-int/lit8 v5, p3, 0x4

    if-nez v5, :cond_40

    .line 969
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 972
    :cond_40
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_52

    .line 973
    new-instance v0, Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, p0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 976
    :cond_52
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 977
    if-eqz v1, :cond_5d

    .line 978
    invoke-virtual {v4, v0}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 980
    :cond_5d
    invoke-direct {p0, v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z

    move-result v0

    or-int/2addr v0, v3

    .line 981
    if-nez v0, :cond_c

    .line 982
    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_c

    .line 985
    :cond_68
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_6f

    .line 986
    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    :cond_6f
    move v0, v3

    goto :goto_c
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 6

    .prologue
    .line 835
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    .line 837
    const/4 v0, 0x0

    .line 839
    if-eqz v1, :cond_b

    .line 840
    invoke-virtual {p0, v1, p3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 843
    :cond_b
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_13

    .line 844
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 847
    :cond_13
    return v0
.end method

.method public removeGroup(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 535
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v3

    .line 537
    if-ltz v3, :cond_2b

    .line 538
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v4, v0, v3

    move v0, v1

    .line 540
    :goto_10
    add-int/lit8 v2, v0, 0x1

    if-ge v0, v4, :cond_27

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_27

    .line 542
    invoke-direct {p0, v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v0, v2

    goto :goto_10

    .line 546
    :cond_27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 548
    :cond_2b
    return-void
.end method

.method public removeItem(I)V
    .registers 4

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 531
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3

    .prologue
    .line 569
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 570
    return-void
.end method

.method public removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .registers 5

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 267
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 268
    if-eqz v1, :cond_1c

    if-ne v1, p1, :cond_6

    .line 269
    :cond_1c
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 272
    :cond_22
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    .line 391
    if-nez p1, :cond_3

    .line 418
    :cond_2
    :goto_2
    return-void

    .line 396
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 398
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 399
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_3a

    .line 400
    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 401
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    .line 402
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_27

    .line 403
    invoke-virtual {v4, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 405
    :cond_27
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 406
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 407
    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 399
    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 411
    :cond_3a
    const-string/jumbo v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 412
    if-lez v0, :cond_2

    .line 413
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_2

    .line 415
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->b(Landroid/view/MenuItem;)Z

    goto :goto_2
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 360
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 361
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 366
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 367
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_8
    if-ge v2, v3, :cond_4a

    .line 368
    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 369
    invoke-static {v4}, Landroid/support/v4/view/MenuItemCompat;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_35

    .line 371
    if-nez v0, :cond_22

    .line 372
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 374
    :cond_22
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 375
    invoke-static {v4}, Landroid/support/v4/view/MenuItemCompat;->c(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 376
    const-string/jumbo v1, "android:menu:expandedactionview"

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_35
    move-object v1, v0

    .line 379
    invoke-interface {v4}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 380
    invoke-interface {v4}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 381
    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 367
    :cond_45
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_8

    .line 385
    :cond_4a
    if-eqz v0, :cond_53

    .line 386
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 388
    :cond_53
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 356
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 357
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .registers 2

    .prologue
    .line 425
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 426
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .prologue
    .line 1307
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1308
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 2

    .prologue
    .line 230
    iput p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 231
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 592
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    .line 594
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 595
    :goto_c
    if-ge v3, v5, :cond_35

    .line 596
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 597
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, v4, :cond_22

    .line 598
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->g()Z

    move-result v1

    if-nez v1, :cond_26

    .line 595
    :cond_22
    :goto_22
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    .line 599
    :cond_26
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 602
    if-ne v0, p1, :cond_33

    const/4 v1, 0x1

    :goto_2f
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->b(Z)V

    goto :goto_22

    :cond_33
    move v1, v2

    goto :goto_2f

    .line 605
    :cond_35
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8

    .prologue
    .line 609
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 611
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_22

    .line 612
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 613
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1e

    .line 614
    invoke-virtual {v0, p3}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Z)V

    .line 615
    invoke-virtual {v0, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 611
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 618
    :cond_22
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7

    .prologue
    .line 640
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 642
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1f

    .line 643
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 644
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1b

    .line 645
    invoke-virtual {v0, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 642
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 648
    :cond_1f
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 622
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    .line 628
    :goto_a
    if-ge v3, v4, :cond_26

    .line 629
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 630
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_2c

    .line 631
    invoke-virtual {v0, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    .line 628
    :goto_21
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_a

    .line 635
    :cond_26
    if-eqz v2, :cond_2b

    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 636
    :cond_2b
    return-void

    :cond_2c
    move v0, v2

    goto :goto_21
.end method

.method protected setHeaderIconInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1263
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1264
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1251
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1252
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1239
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1240
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1227
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1228
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1275
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1276
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .registers 2

    .prologue
    .line 1311
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1312
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .registers 2

    .prologue
    .line 1372
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1373
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 3

    .prologue
    .line 739
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 741
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 742
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    .prologue
    .line 780
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_5

    .line 786
    :goto_4
    return-void

    .line 784
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_4
.end method

.method public size()I
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1054
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1056
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_d

    .line 1057
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1058
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1060
    :cond_d
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    .prologue
    .line 1047
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_a

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1051
    :cond_a
    return-void
.end method
