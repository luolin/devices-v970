.class public Landroid/view/ViewGroup$MarginLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# static fields
.field private static final DEFAULT_RELATIVE:I = -0x80000000


# instance fields
.field public bottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field protected endMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public leftMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public rightMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field protected startMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public topMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v0, -0x8000

    .line 5562
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5501
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5509
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5563
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/high16 v5, -0x8000

    const/4 v4, 0x0

    .line 5526
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 5501
    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5509
    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5528
    sget-object v2, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5529
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    .line 5533
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 5535
    .local v1, margin:I
    if-ltz v1, :cond_0

    .line 5536
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5537
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5538
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5539
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5555
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5556
    return-void

    .line 5541
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5543
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5545
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5547
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5549
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5551
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/high16 v0, -0x8000

    .line 5586
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5501
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5509
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5587
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/high16 v0, -0x8000

    .line 5570
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 5501
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5509
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5571
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5572
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5574
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5575
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5576
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5577
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5578
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5579
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5580
    return-void
.end method


# virtual methods
.method public getMarginEnd()I
    .locals 1

    .prologue
    .line 5659
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    return v0
.end method

.method public getMarginStart()I
    .locals 1

    .prologue
    .line 5646
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    return v0
.end method

.method public isMarginRelative()Z
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 5673
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resolveWithDirection(I)V
    .locals 2
    .parameter "layoutDirection"

    .prologue
    const/high16 v1, -0x8000

    .line 5684
    packed-switch p1, :pswitch_data_0

    .line 5691
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    :goto_0
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5692
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v1, :cond_3

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    :goto_1
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5695
    :goto_2
    return-void

    .line 5686
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    :goto_3
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5687
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    :goto_4
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 5686
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 5687
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 5691
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 5692
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 5684
    nop

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public setMargins(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5605
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5606
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5607
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5608
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5609
    return-void
.end method

.method public setMarginsRelative(IIII)V
    .locals 0
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    .line 5630
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5631
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5632
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5633
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5634
    return-void
.end method
