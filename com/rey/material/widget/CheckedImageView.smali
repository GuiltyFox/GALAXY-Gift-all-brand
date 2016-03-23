.class public Lcom/rey/material/widget/CheckedImageView;
.super Lcom/rey/material/widget/ImageView;
.source "CheckedImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final STATE_CHECKED:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/rey/material/widget/CheckedImageView;->STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/rey/material/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/CheckedImageView;->mChecked:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/rey/material/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/CheckedImageView;->mChecked:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/rey/material/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/CheckedImageView;->mChecked:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/CheckedImageView;->mChecked:Z

    .line 32
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/rey/material/widget/CheckedImageView;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 5
    .param p1, "extraSpace"    # I

    .prologue
    .line 54
    add-int/lit8 v2, p1, 0x1

    invoke-super {p0, v2}, Lcom/rey/material/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 56
    .local v1, "drawableState":[I
    iget-boolean v2, p0, Lcom/rey/material/widget/CheckedImageView;->mChecked:Z

    if-eqz v2, :cond_12

    sget-object v0, Lcom/rey/material/widget/CheckedImageView;->STATE_CHECKED:[I

    .line 57
    .local v0, "additionalStates":[I
    :goto_c
    if-eqz v0, :cond_11

    .line 58
    invoke-static {v1, v0}, Lcom/rey/material/widget/CheckedImageView;->mergeDrawableStates([I[I)[I

    .line 60
    :cond_11
    return-object v1

    .line 56
    .end local v0    # "additionalStates":[I
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "b"    # Z

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/rey/material/widget/CheckedImageView;->mChecked:Z

    if-eq v0, p1, :cond_9

    .line 37
    iput-boolean p1, p0, Lcom/rey/material/widget/CheckedImageView;->mChecked:Z

    .line 38
    invoke-virtual {p0}, Lcom/rey/material/widget/CheckedImageView;->refreshDrawableState()V

    .line 40
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/rey/material/widget/CheckedImageView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/rey/material/widget/CheckedImageView;->setChecked(Z)V

    .line 50
    return-void

    .line 49
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
