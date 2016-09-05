.class final Lcom/rey/material/widget/Spinner$SavedState$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/Spinner$SavedState;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/rey/material/widget/Spinner$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/rey/material/widget/Spinner$SavedState;
    .registers 3

    .prologue
    .line 1007
    new-instance v0, Lcom/rey/material/widget/Spinner$SavedState;

    invoke-direct {v0, p1}, Lcom/rey/material/widget/Spinner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/rey/material/widget/Spinner$SavedState;
    .registers 3

    .prologue
    .line 1011
    new-array v0, p1, [Lcom/rey/material/widget/Spinner$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1005
    invoke-virtual {p0, p1}, Lcom/rey/material/widget/Spinner$SavedState$1;->a(Landroid/os/Parcel;)Lcom/rey/material/widget/Spinner$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1005
    invoke-virtual {p0, p1}, Lcom/rey/material/widget/Spinner$SavedState$1;->a(I)[Lcom/rey/material/widget/Spinner$SavedState;

    move-result-object v0

    return-object v0
.end method
