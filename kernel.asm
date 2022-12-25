
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9d813103          	ld	sp,-1576(sp) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	25c060ef          	jal	ra,80006278 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	494030ef          	jal	ra,8000451c <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078a63          	beqz	a5,8000127c <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    80001270:	00150513          	addi	a0,a0,1
    80001274:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    80001278:	fedff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    8000127c:	00f58023          	sb	a5,0(a1)
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    8000128c:	fe010113          	addi	sp,sp,-32
    80001290:	00113c23          	sd	ra,24(sp)
    80001294:	00813823          	sd	s0,16(sp)
    80001298:	00913423          	sd	s1,8(sp)
    8000129c:	01213023          	sd	s2,0(sp)
    800012a0:	02010413          	addi	s0,sp,32
    800012a4:	00050493          	mv	s1,a0
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800012a8:	0e050913          	addi	s2,a0,224

    slabAllocatorLocal->buddy = buddy;
    800012ac:	0ea53023          	sd	a0,224(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012b0:	00000793          	li	a5,0
    800012b4:	0140006f          	j	800012c8 <_Z19slab_allocator_initP14buddyAllocator+0x3c>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800012b8:	00379713          	slli	a4,a5,0x3
    800012bc:	00e48733          	add	a4,s1,a4
    800012c0:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012c4:	00178793          	addi	a5,a5,1
    800012c8:	00c00713          	li	a4,12
    800012cc:	fef776e3          	bgeu	a4,a5,800012b8 <_Z19slab_allocator_initP14buddyAllocator+0x2c>

    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    800012d0:	15048593          	addi	a1,s1,336
    800012d4:	00008517          	auipc	a0,0x8
    800012d8:	d4c50513          	addi	a0,a0,-692 # 80009020 <CONSOLE_STATUS+0x10>
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f7c080e7          	jalr	-132(ra) # 80001258 <_Z6strcpyPKcPc>
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    800012e4:	1a04bc23          	sd	zero,440(s1)
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    800012e8:	1c04b023          	sd	zero,448(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    800012ec:	1804b823          	sd	zero,400(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    800012f0:	1804bc23          	sd	zero,408(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    800012f4:	1a04b023          	sd	zero,416(s1)
    slabAllocatorLocal->cacheOfCaches.slab_size = CACHE_OF_CACHES_SLAB_SIZE;
    800012f8:	00200793          	li	a5,2
    800012fc:	1af4b423          	sd	a5,424(s1)
    slabAllocatorLocal->cacheOfCaches.obj_size = sizeof(kmem_cache_t);
    80001300:	07800793          	li	a5,120
    80001304:	1af4b823          	sd	a5,432(s1)
    return slabAllocatorLocal;
}
    80001308:	00090513          	mv	a0,s2
    8000130c:	01813083          	ld	ra,24(sp)
    80001310:	01013403          	ld	s0,16(sp)
    80001314:	00813483          	ld	s1,8(sp)
    80001318:	00013903          	ld	s2,0(sp)
    8000131c:	02010113          	addi	sp,sp,32
    80001320:	00008067          	ret

0000000080001324 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    80001324:	fd010113          	addi	sp,sp,-48
    80001328:	02113423          	sd	ra,40(sp)
    8000132c:	02813023          	sd	s0,32(sp)
    80001330:	00913c23          	sd	s1,24(sp)
    80001334:	01213823          	sd	s2,16(sp)
    80001338:	01313423          	sd	s3,8(sp)
    8000133c:	03010413          	addi	s0,sp,48
    80001340:	00050913          	mv	s2,a0
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001344:	00000793          	li	a5,0
    80001348:	01893703          	ld	a4,24(s2)
    8000134c:	04e7f463          	bgeu	a5,a4,80001394 <_Z14allocateObjectP6slab_s+0x70>
    {
        size_t mask = 1 << (i%8);
    80001350:	0077f713          	andi	a4,a5,7
    80001354:	00100613          	li	a2,1
    80001358:	00e616bb          	sllw	a3,a2,a4
        if(!((uint8)slab->allocated[i/8] & mask))
    8000135c:	0037d713          	srli	a4,a5,0x3
    80001360:	00e90733          	add	a4,s2,a4
    80001364:	02874703          	lbu	a4,40(a4)
    80001368:	00d77733          	and	a4,a4,a3
    8000136c:	00070663          	beqz	a4,80001378 <_Z14allocateObjectP6slab_s+0x54>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001370:	00178793          	addi	a5,a5,1
    80001374:	fd5ff06f          	j	80001348 <_Z14allocateObjectP6slab_s+0x24>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001378:	01093703          	ld	a4,16(s2)
    8000137c:	06073983          	ld	s3,96(a4)
    80001380:	02f989b3          	mul	s3,s3,a5
    80001384:	013909b3          	add	s3,s2,s3
    80001388:	04898993          	addi	s3,s3,72
            index = i;
    8000138c:	0007849b          	sext.w	s1,a5
            break;
    80001390:	00c0006f          	j	8000139c <_Z14allocateObjectP6slab_s+0x78>
    void* addr = nullptr;
    80001394:	00000993          	li	s3,0
    int index = -1;
    80001398:	fff00493          	li	s1,-1
        }
    }
    if(addr == nullptr)
    8000139c:	06098a63          	beqz	s3,80001410 <_Z14allocateObjectP6slab_s+0xec>
        return nullptr;

    KConsole::trapPrintString("Allocated index ");
    800013a0:	00008517          	auipc	a0,0x8
    800013a4:	c9050513          	addi	a0,a0,-880 # 80009030 <CONSOLE_STATUS+0x20>
    800013a8:	00002097          	auipc	ra,0x2
    800013ac:	3e8080e7          	jalr	1000(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(index); KConsole::trapPrintString("\n");
    800013b0:	00000613          	li	a2,0
    800013b4:	00a00593          	li	a1,10
    800013b8:	00048513          	mv	a0,s1
    800013bc:	00002097          	auipc	ra,0x2
    800013c0:	418080e7          	jalr	1048(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    800013c4:	00008517          	auipc	a0,0x8
    800013c8:	3b450513          	addi	a0,a0,948 # 80009778 <CONSOLE_STATUS+0x768>
    800013cc:	00002097          	auipc	ra,0x2
    800013d0:	3c4080e7          	jalr	964(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>

    slab->allocated[index/8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800013d4:	41f4d79b          	sraiw	a5,s1,0x1f
    800013d8:	01d7d69b          	srliw	a3,a5,0x1d
    800013dc:	009687bb          	addw	a5,a3,s1
    800013e0:	4037d71b          	sraiw	a4,a5,0x3
    800013e4:	00e90733          	add	a4,s2,a4
    800013e8:	02870603          	lb	a2,40(a4)
    800013ec:	0077f793          	andi	a5,a5,7
    800013f0:	40d787bb          	subw	a5,a5,a3
    800013f4:	00100693          	li	a3,1
    800013f8:	00f697bb          	sllw	a5,a3,a5
    800013fc:	00f667b3          	or	a5,a2,a5
    80001400:	02f70423          	sb	a5,40(a4)
    slab->numOfAllocatedObjects++;
    80001404:	02093783          	ld	a5,32(s2)
    80001408:	00178793          	addi	a5,a5,1
    8000140c:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001410:	00098513          	mv	a0,s3
    80001414:	02813083          	ld	ra,40(sp)
    80001418:	02013403          	ld	s0,32(sp)
    8000141c:	01813483          	ld	s1,24(sp)
    80001420:	01013903          	ld	s2,16(sp)
    80001424:	00813983          	ld	s3,8(sp)
    80001428:	03010113          	addi	sp,sp,48
    8000142c:	00008067          	ret

0000000080001430 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    8000143c:	02053783          	ld	a5,32(a0)
    80001440:	01853503          	ld	a0,24(a0)
    80001444:	40f50533          	sub	a0,a0,a5
}
    80001448:	00153513          	seqz	a0,a0
    8000144c:	00813403          	ld	s0,8(sp)
    80001450:	01010113          	addi	sp,sp,16
    80001454:	00008067          	ret

0000000080001458 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001458:	ff010113          	addi	sp,sp,-16
    8000145c:	00813423          	sd	s0,8(sp)
    80001460:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001464:	02053503          	ld	a0,32(a0)
}
    80001468:	00153513          	seqz	a0,a0
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret

0000000080001478 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    slab->prev = nullptr;
    80001484:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    80001488:	0005b783          	ld	a5,0(a1)
    8000148c:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001490:	00078463          	beqz	a5,80001498 <_Z18insertIntoSlabListP6slab_sPS0_+0x20>
        (*slab_head)->prev = slab;
    80001494:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    80001498:	00a5b023          	sd	a0,0(a1)
}
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00813423          	sd	s0,8(sp)
    800014b0:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    800014b4:	00053783          	ld	a5,0(a0)
    800014b8:	02078663          	beqz	a5,800014e4 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    800014bc:	00853703          	ld	a4,8(a0)
    800014c0:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    800014c4:	00070663          	beqz	a4,800014d0 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    800014c8:	00053783          	ld	a5,0(a0)
    800014cc:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    800014d0:	00053023          	sd	zero,0(a0)
    800014d4:	00053423          	sd	zero,8(a0)
    }
}
    800014d8:	00813403          	ld	s0,8(sp)
    800014dc:	01010113          	addi	sp,sp,16
    800014e0:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    800014e4:	00853783          	ld	a5,8(a0)
    800014e8:	00078463          	beqz	a5,800014f0 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    800014ec:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    800014f0:	00853783          	ld	a5,8(a0)
    800014f4:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    800014f8:	00053023          	sd	zero,0(a0)
    800014fc:	00053423          	sd	zero,8(a0)
    80001500:	fd9ff06f          	j	800014d8 <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001504 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	00913423          	sd	s1,8(sp)
    80001514:	01213023          	sd	s2,0(sp)
    80001518:	02010413          	addi	s0,sp,32
    8000151c:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001520:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001524:	05050593          	addi	a1,a0,80
    80001528:	00090513          	mv	a0,s2
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	f7c080e7          	jalr	-132(ra) # 800014a8 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    80001534:	04848593          	addi	a1,s1,72
    80001538:	00090513          	mv	a0,s2
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	f3c080e7          	jalr	-196(ra) # 80001478 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001544:	01813083          	ld	ra,24(sp)
    80001548:	01013403          	ld	s0,16(sp)
    8000154c:	00813483          	ld	s1,8(sp)
    80001550:	00013903          	ld	s2,0(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret

000000008000155c <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    8000155c:	fe010113          	addi	sp,sp,-32
    80001560:	00113c23          	sd	ra,24(sp)
    80001564:	00813823          	sd	s0,16(sp)
    80001568:	00913423          	sd	s1,8(sp)
    8000156c:	01213023          	sd	s2,0(sp)
    80001570:	02010413          	addi	s0,sp,32
    80001574:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    80001578:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    8000157c:	04050593          	addi	a1,a0,64
    80001580:	00090513          	mv	a0,s2
    80001584:	00000097          	auipc	ra,0x0
    80001588:	f24080e7          	jalr	-220(ra) # 800014a8 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    8000158c:	05048593          	addi	a1,s1,80
    80001590:	00090513          	mv	a0,s2
    80001594:	00000097          	auipc	ra,0x0
    80001598:	ee4080e7          	jalr	-284(ra) # 80001478 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    8000159c:	01813083          	ld	ra,24(sp)
    800015a0:	01013403          	ld	s0,16(sp)
    800015a4:	00813483          	ld	s1,8(sp)
    800015a8:	00013903          	ld	s2,0(sp)
    800015ac:	02010113          	addi	sp,sp,32
    800015b0:	00008067          	ret

00000000800015b4 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00113c23          	sd	ra,24(sp)
    800015bc:	00813823          	sd	s0,16(sp)
    800015c0:	00913423          	sd	s1,8(sp)
    800015c4:	01213023          	sd	s2,0(sp)
    800015c8:	02010413          	addi	s0,sp,32
    800015cc:	00050913          	mv	s2,a0
    800015d0:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    800015d4:	04850593          	addi	a1,a0,72
    800015d8:	00048513          	mv	a0,s1
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	ecc080e7          	jalr	-308(ra) # 800014a8 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    800015e4:	05090593          	addi	a1,s2,80
    800015e8:	00048513          	mv	a0,s1
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	e8c080e7          	jalr	-372(ra) # 80001478 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800015f4:	01813083          	ld	ra,24(sp)
    800015f8:	01013403          	ld	s0,16(sp)
    800015fc:	00813483          	ld	s1,8(sp)
    80001600:	00013903          	ld	s2,0(sp)
    80001604:	02010113          	addi	sp,sp,32
    80001608:	00008067          	ret

000000008000160c <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	00913423          	sd	s1,8(sp)
    8000161c:	01213023          	sd	s2,0(sp)
    80001620:	02010413          	addi	s0,sp,32
    80001624:	00050913          	mv	s2,a0
    80001628:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    8000162c:	05050593          	addi	a1,a0,80
    80001630:	00048513          	mv	a0,s1
    80001634:	00000097          	auipc	ra,0x0
    80001638:	e74080e7          	jalr	-396(ra) # 800014a8 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    8000163c:	04090593          	addi	a1,s2,64
    80001640:	00048513          	mv	a0,s1
    80001644:	00000097          	auipc	ra,0x0
    80001648:	e34080e7          	jalr	-460(ra) # 80001478 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    8000164c:	01813083          	ld	ra,24(sp)
    80001650:	01013403          	ld	s0,16(sp)
    80001654:	00813483          	ld	s1,8(sp)
    80001658:	00013903          	ld	s2,0(sp)
    8000165c:	02010113          	addi	sp,sp,32
    80001660:	00008067          	ret

0000000080001664 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    80001664:	fe010113          	addi	sp,sp,-32
    80001668:	00113c23          	sd	ra,24(sp)
    8000166c:	00813823          	sd	s0,16(sp)
    80001670:	00913423          	sd	s1,8(sp)
    80001674:	02010413          	addi	s0,sp,32
    80001678:	00050493          	mv	s1,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    8000167c:	05853583          	ld	a1,88(a0)
    80001680:	0000a797          	auipc	a5,0xa
    80001684:	3e07b783          	ld	a5,992(a5) # 8000ba60 <_ZL13slabAllocator>
    80001688:	0007b503          	ld	a0,0(a5)
    8000168c:	00001097          	auipc	ra,0x1
    80001690:	5e8080e7          	jalr	1512(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    newSlab->next = cachep->slabs_empty;
    80001694:	0404b783          	ld	a5,64(s1)
    80001698:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    8000169c:	00078463          	beqz	a5,800016a4 <_Z12allocateSlabP12kmem_cache_s+0x40>
        cachep->slabs_empty->prev = newSlab;
    800016a0:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    800016a4:	04a4b023          	sd	a0,64(s1)
    newSlab->prev = nullptr;
    800016a8:	00053023          	sd	zero,0(a0)
    newSlab->numOfAllocatedObjects = 0;
    800016ac:	02053023          	sd	zero,32(a0)
    newSlab->owner = cachep;
    800016b0:	00953823          	sd	s1,16(a0)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    800016b4:	0584b683          	ld	a3,88(s1)
    800016b8:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    800016bc:	fb868693          	addi	a3,a3,-72
    800016c0:	0604b783          	ld	a5,96(s1)
    800016c4:	02f6d6b3          	divu	a3,a3,a5
    800016c8:	00d53c23          	sd	a3,24(a0)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    800016cc:	00000713          	li	a4,0
    800016d0:	00768793          	addi	a5,a3,7
    800016d4:	0037d793          	srli	a5,a5,0x3
    800016d8:	00f77a63          	bgeu	a4,a5,800016ec <_Z12allocateSlabP12kmem_cache_s+0x88>
        newSlab->allocated[i] = 0;
    800016dc:	00e507b3          	add	a5,a0,a4
    800016e0:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    800016e4:	00170713          	addi	a4,a4,1
    800016e8:	fe9ff06f          	j	800016d0 <_Z12allocateSlabP12kmem_cache_s+0x6c>
}
    800016ec:	01813083          	ld	ra,24(sp)
    800016f0:	01013403          	ld	s0,16(sp)
    800016f4:	00813483          	ld	s1,8(sp)
    800016f8:	02010113          	addi	sp,sp,32
    800016fc:	00008067          	ret

0000000080001700 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00813423          	sd	s0,8(sp)
    80001708:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    8000170c:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001710:	04850713          	addi	a4,a0,72
    80001714:	00e7f663          	bgeu	a5,a4,80001720 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    80001718:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    8000171c:	ff5ff06f          	j	80001710 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    80001720:	fb878593          	addi	a1,a5,-72 # fb8 <_entry-0x7ffff048>
    80001724:	02a5f5b3          	remu	a1,a1,a0

    for(int i = 1;i<=4;i++) //TODO change constants
    80001728:	00100713          	li	a4,1
    8000172c:	0080006f          	j	80001734 <_Z18getOptimalSlabSizem+0x34>
    80001730:	0017071b          	addiw	a4,a4,1
    80001734:	00400693          	li	a3,4
    80001738:	02e6c063          	blt	a3,a4,80001758 <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    8000173c:	00e79633          	sll	a2,a5,a4
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    80001740:	fb860693          	addi	a3,a2,-72
    80001744:	02a6f6b3          	remu	a3,a3,a0
        if(newWaste < optimalWaste)
    80001748:	feb6f4e3          	bgeu	a3,a1,80001730 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    8000174c:	00068593          	mv	a1,a3
            bestSize = newSize;
    80001750:	00060793          	mv	a5,a2
    80001754:	fddff06f          	j	80001730 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    80001758:	00c7d513          	srli	a0,a5,0xc
    8000175c:	00813403          	ld	s0,8(sp)
    80001760:	01010113          	addi	sp,sp,16
    80001764:	00008067          	ret

0000000080001768 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001768:	ff010113          	addi	sp,sp,-16
    8000176c:	00813423          	sd	s0,8(sp)
    80001770:	01010413          	addi	s0,sp,16
    80001774:	00050693          	mv	a3,a0
    slab_t* slab = cachep->slabs_full;
    80001778:	04853503          	ld	a0,72(a0)
    8000177c:	0080006f          	j	80001784 <_Z8findSlabP12kmem_cache_sPKv+0x1c>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001780:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001784:	02050863          	beqz	a0,800017b4 <_Z8findSlabP12kmem_cache_sPKv+0x4c>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001788:	01853783          	ld	a5,24(a0)
    8000178c:	01053703          	ld	a4,16(a0)
    80001790:	06073703          	ld	a4,96(a4)
    80001794:	02e787b3          	mul	a5,a5,a4
    80001798:	00a787b3          	add	a5,a5,a0
    8000179c:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800017a0:	feb570e3          	bgeu	a0,a1,80001780 <_Z8findSlabP12kmem_cache_sPKv+0x18>
    800017a4:	fcf5fee3          	bgeu	a1,a5,80001780 <_Z8findSlabP12kmem_cache_sPKv+0x18>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    800017a8:	00813403          	ld	s0,8(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret
    slab = cachep->slabs_partial;
    800017b4:	0506b503          	ld	a0,80(a3)
    800017b8:	0080006f          	j	800017c0 <_Z8findSlabP12kmem_cache_sPKv+0x58>
        slab = slab->next;
    800017bc:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    800017c0:	fe0504e3          	beqz	a0,800017a8 <_Z8findSlabP12kmem_cache_sPKv+0x40>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800017c4:	01853783          	ld	a5,24(a0)
    800017c8:	01053703          	ld	a4,16(a0)
    800017cc:	06073703          	ld	a4,96(a4)
    800017d0:	02e787b3          	mul	a5,a5,a4
    800017d4:	00a787b3          	add	a5,a5,a0
    800017d8:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800017dc:	feb570e3          	bgeu	a0,a1,800017bc <_Z8findSlabP12kmem_cache_sPKv+0x54>
    800017e0:	fcf5fee3          	bgeu	a1,a5,800017bc <_Z8findSlabP12kmem_cache_sPKv+0x54>
    800017e4:	fc5ff06f          	j	800017a8 <_Z8findSlabP12kmem_cache_sPKv+0x40>

00000000800017e8 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00813423          	sd	s0,8(sp)
    800017f0:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    800017f4:	41f5d79b          	sraiw	a5,a1,0x1f
    800017f8:	01d7d79b          	srliw	a5,a5,0x1d
    800017fc:	00b785bb          	addw	a1,a5,a1
    80001800:	4035d71b          	sraiw	a4,a1,0x3
    80001804:	00e50533          	add	a0,a0,a4
    80001808:	02850703          	lb	a4,40(a0)
    8000180c:	0075f593          	andi	a1,a1,7
    80001810:	40f585bb          	subw	a1,a1,a5
    80001814:	00100793          	li	a5,1
    80001818:	00b795bb          	sllw	a1,a5,a1
    8000181c:	fff5c593          	not	a1,a1
    80001820:	00b775b3          	and	a1,a4,a1
    80001824:	02b50423          	sb	a1,40(a0)
}
    80001828:	00813403          	ld	s0,8(sp)
    8000182c:	01010113          	addi	sp,sp,16
    80001830:	00008067          	ret

0000000080001834 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001834:	fe010113          	addi	sp,sp,-32
    80001838:	00113c23          	sd	ra,24(sp)
    8000183c:	00813823          	sd	s0,16(sp)
    80001840:	00913423          	sd	s1,8(sp)
    80001844:	01213023          	sd	s2,0(sp)
    80001848:	02010413          	addi	s0,sp,32
    8000184c:	00050913          	mv	s2,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001850:	00007517          	auipc	a0,0x7
    80001854:	7f850513          	addi	a0,a0,2040 # 80009048 <CONSOLE_STATUS+0x38>
    80001858:	00002097          	auipc	ra,0x2
    8000185c:	f38080e7          	jalr	-200(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab address ");
    80001860:	00008517          	auipc	a0,0x8
    80001864:	80050513          	addi	a0,a0,-2048 # 80009060 <CONSOLE_STATUS+0x50>
    80001868:	00002097          	auipc	ra,0x2
    8000186c:	f28080e7          	jalr	-216(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slab, 16);KConsole::trapPrintString("\n");
    80001870:	00000613          	li	a2,0
    80001874:	01000593          	li	a1,16
    80001878:	00090513          	mv	a0,s2
    8000187c:	00002097          	auipc	ra,0x2
    80001880:	f58080e7          	jalr	-168(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80001884:	00008517          	auipc	a0,0x8
    80001888:	ef450513          	addi	a0,a0,-268 # 80009778 <CONSOLE_STATUS+0x768>
    8000188c:	00002097          	auipc	ra,0x2
    80001890:	f04080e7          	jalr	-252(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of allocated objects ");
    80001894:	00007517          	auipc	a0,0x7
    80001898:	7dc50513          	addi	a0,a0,2012 # 80009070 <CONSOLE_STATUS+0x60>
    8000189c:	00002097          	auipc	ra,0x2
    800018a0:	ef4080e7          	jalr	-268(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfAllocatedObjects);KConsole::trapPrintString("\n");
    800018a4:	00000613          	li	a2,0
    800018a8:	00a00593          	li	a1,10
    800018ac:	02093503          	ld	a0,32(s2)
    800018b0:	00002097          	auipc	ra,0x2
    800018b4:	f24080e7          	jalr	-220(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    800018b8:	00008517          	auipc	a0,0x8
    800018bc:	ec050513          	addi	a0,a0,-320 # 80009778 <CONSOLE_STATUS+0x768>
    800018c0:	00002097          	auipc	ra,0x2
    800018c4:	ed0080e7          	jalr	-304(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of objects ");
    800018c8:	00007517          	auipc	a0,0x7
    800018cc:	7c850513          	addi	a0,a0,1992 # 80009090 <CONSOLE_STATUS+0x80>
    800018d0:	00002097          	auipc	ra,0x2
    800018d4:	ec0080e7          	jalr	-320(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfObjects);KConsole::trapPrintString("\n");
    800018d8:	00000613          	li	a2,0
    800018dc:	00a00593          	li	a1,10
    800018e0:	01893503          	ld	a0,24(s2)
    800018e4:	00002097          	auipc	ra,0x2
    800018e8:	ef0080e7          	jalr	-272(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    800018ec:	00008517          	auipc	a0,0x8
    800018f0:	e8c50513          	addi	a0,a0,-372 # 80009778 <CONSOLE_STATUS+0x768>
    800018f4:	00002097          	auipc	ra,0x2
    800018f8:	e9c080e7          	jalr	-356(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    800018fc:	00000493          	li	s1,0
    80001900:	01893783          	ld	a5,24(s2)
    80001904:	00778793          	addi	a5,a5,7
    80001908:	0037d793          	srli	a5,a5,0x3
    8000190c:	02f4fa63          	bgeu	s1,a5,80001940 <_Z13printSlabInfoP6slab_s+0x10c>
    {
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
    80001910:	009907b3          	add	a5,s2,s1
    80001914:	00000613          	li	a2,0
    80001918:	01000593          	li	a1,16
    8000191c:	0287c503          	lbu	a0,40(a5)
    80001920:	00002097          	auipc	ra,0x2
    80001924:	eb4080e7          	jalr	-332(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80001928:	00008517          	auipc	a0,0x8
    8000192c:	e5050513          	addi	a0,a0,-432 # 80009778 <CONSOLE_STATUS+0x768>
    80001930:	00002097          	auipc	ra,0x2
    80001934:	e60080e7          	jalr	-416(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    80001938:	00148493          	addi	s1,s1,1
    8000193c:	fc5ff06f          	j	80001900 <_Z13printSlabInfoP6slab_s+0xcc>
    }
}
    80001940:	01813083          	ld	ra,24(sp)
    80001944:	01013403          	ld	s0,16(sp)
    80001948:	00813483          	ld	s1,8(sp)
    8000194c:	00013903          	ld	s2,0(sp)
    80001950:	02010113          	addi	sp,sp,32
    80001954:	00008067          	ret

0000000080001958 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    80001958:	fe010113          	addi	sp,sp,-32
    8000195c:	00113c23          	sd	ra,24(sp)
    80001960:	00813823          	sd	s0,16(sp)
    80001964:	00913423          	sd	s1,8(sp)
    80001968:	01213023          	sd	s2,0(sp)
    8000196c:	02010413          	addi	s0,sp,32
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001970:	40a584b3          	sub	s1,a1,a0
    80001974:	fb848493          	addi	s1,s1,-72
    80001978:	01053783          	ld	a5,16(a0)
    8000197c:	0607b783          	ld	a5,96(a5)
    80001980:	02f4d4b3          	divu	s1,s1,a5
    80001984:	0004849b          	sext.w	s1,s1
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001988:	029787b3          	mul	a5,a5,s1
    8000198c:	00f507b3          	add	a5,a0,a5
    80001990:	04878793          	addi	a5,a5,72
    80001994:	00f58e63          	beq	a1,a5,800019b0 <_Z16free_slab_objectP6slab_sPKv+0x58>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
        removeFullSlab(slab->owner, slab);
    else if(slab->numOfAllocatedObjects == 1)
        removePartialSlab(slab->owner, slab);
    slab->numOfAllocatedObjects--;
}
    80001998:	01813083          	ld	ra,24(sp)
    8000199c:	01013403          	ld	s0,16(sp)
    800019a0:	00813483          	ld	s1,8(sp)
    800019a4:	00013903          	ld	s2,0(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret
    800019b0:	00050913          	mv	s2,a0
    KConsole::trapPrintString("ok je index\n"); KConsole::trapPrintInt(indexOfObject);
    800019b4:	00007517          	auipc	a0,0x7
    800019b8:	6f450513          	addi	a0,a0,1780 # 800090a8 <CONSOLE_STATUS+0x98>
    800019bc:	00002097          	auipc	ra,0x2
    800019c0:	dd4080e7          	jalr	-556(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    800019c4:	00000613          	li	a2,0
    800019c8:	00a00593          	li	a1,10
    800019cc:	00048513          	mv	a0,s1
    800019d0:	00002097          	auipc	ra,0x2
    800019d4:	e04080e7          	jalr	-508(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    KConsole::trapPrintString("\n");
    800019d8:	00008517          	auipc	a0,0x8
    800019dc:	da050513          	addi	a0,a0,-608 # 80009778 <CONSOLE_STATUS+0x768>
    800019e0:	00002097          	auipc	ra,0x2
    800019e4:	db0080e7          	jalr	-592(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    resetAllocatedIndex(slab, indexOfObject);
    800019e8:	00048593          	mv	a1,s1
    800019ec:	00090513          	mv	a0,s2
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	df8080e7          	jalr	-520(ra) # 800017e8 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    800019f8:	01893703          	ld	a4,24(s2)
    800019fc:	02093783          	ld	a5,32(s2)
    80001a00:	00f70e63          	beq	a4,a5,80001a1c <_Z16free_slab_objectP6slab_sPKv+0xc4>
    else if(slab->numOfAllocatedObjects == 1)
    80001a04:	00100713          	li	a4,1
    80001a08:	02e78463          	beq	a5,a4,80001a30 <_Z16free_slab_objectP6slab_sPKv+0xd8>
    slab->numOfAllocatedObjects--;
    80001a0c:	02093783          	ld	a5,32(s2)
    80001a10:	fff78793          	addi	a5,a5,-1
    80001a14:	02f93023          	sd	a5,32(s2)
    80001a18:	f81ff06f          	j	80001998 <_Z16free_slab_objectP6slab_sPKv+0x40>
        removeFullSlab(slab->owner, slab);
    80001a1c:	00090593          	mv	a1,s2
    80001a20:	01093503          	ld	a0,16(s2)
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	b90080e7          	jalr	-1136(ra) # 800015b4 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
    80001a2c:	fe1ff06f          	j	80001a0c <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    80001a30:	00090593          	mv	a1,s2
    80001a34:	01093503          	ld	a0,16(s2)
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	bd4080e7          	jalr	-1068(ra) # 8000160c <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001a40:	fcdff06f          	j	80001a0c <_Z16free_slab_objectP6slab_sPKv+0xb4>

0000000080001a44 <_Z9kmem_initPvi>:
    }
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00113423          	sd	ra,8(sp)
    80001a4c:	00813023          	sd	s0,0(sp)
    80001a50:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	4c8080e7          	jalr	1224(ra) # 80002f1c <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	830080e7          	jalr	-2000(ra) # 8000128c <_Z19slab_allocator_initP14buddyAllocator>
    80001a64:	0000a797          	auipc	a5,0xa
    80001a68:	fea7be23          	sd	a0,-4(a5) # 8000ba60 <_ZL13slabAllocator>
    //printSlabAllocatorInfo();
}
    80001a6c:	00813083          	ld	ra,8(sp)
    80001a70:	00013403          	ld	s0,0(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret

0000000080001a7c <_Z16kmem_cache_allocP12kmem_cache_s>:
    newCache->slab_size = getOptimalSlabSize(size);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001a7c:	fe010113          	addi	sp,sp,-32
    80001a80:	00113c23          	sd	ra,24(sp)
    80001a84:	00813823          	sd	s0,16(sp)
    80001a88:	00913423          	sd	s1,8(sp)
    80001a8c:	01213023          	sd	s2,0(sp)
    80001a90:	02010413          	addi	s0,sp,32
    80001a94:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr)
    80001a98:	05053503          	ld	a0,80(a0)
    80001a9c:	02051c63          	bnez	a0,80001ad4 <_Z16kmem_cache_allocP12kmem_cache_s+0x58>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001aa0:	0404b503          	ld	a0,64(s1)
    80001aa4:	06050c63          	beqz	a0,80001b1c <_Z16kmem_cache_allocP12kmem_cache_s+0xa0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	87c080e7          	jalr	-1924(ra) # 80001324 <_Z14allocateObjectP6slab_s>
    80001ab0:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001ab4:	0404b503          	ld	a0,64(s1)
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	9a0080e7          	jalr	-1632(ra) # 80001458 <_Z5emptyP6slab_s>
    80001ac0:	02051863          	bnez	a0,80001af0 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    80001ac4:	00048513          	mv	a0,s1
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	a94080e7          	jalr	-1388(ra) # 8000155c <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    80001ad0:	0200006f          	j	80001af0 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	850080e7          	jalr	-1968(ra) # 80001324 <_Z14allocateObjectP6slab_s>
    80001adc:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001ae0:	0504b503          	ld	a0,80(s1)
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	94c080e7          	jalr	-1716(ra) # 80001430 <_Z4fullP6slab_s>
    80001aec:	02051063          	bnez	a0,80001b0c <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        if(!empty(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }
    return nullptr;
}
    80001af0:	00090513          	mv	a0,s2
    80001af4:	01813083          	ld	ra,24(sp)
    80001af8:	01013403          	ld	s0,16(sp)
    80001afc:	00813483          	ld	s1,8(sp)
    80001b00:	00013903          	ld	s2,0(sp)
    80001b04:	02010113          	addi	sp,sp,32
    80001b08:	00008067          	ret
            putPartialToFull(cachep);
    80001b0c:	00048513          	mv	a0,s1
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	9f4080e7          	jalr	-1548(ra) # 80001504 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001b18:	fd9ff06f          	j	80001af0 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        allocateSlab(cachep);
    80001b1c:	00048513          	mv	a0,s1
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	b44080e7          	jalr	-1212(ra) # 80001664 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001b28:	0404b903          	ld	s2,64(s1)
    80001b2c:	fc0902e3          	beqz	s2,80001af0 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001b30:	00090513          	mv	a0,s2
    80001b34:	fffff097          	auipc	ra,0xfffff
    80001b38:	7f0080e7          	jalr	2032(ra) # 80001324 <_Z14allocateObjectP6slab_s>
    80001b3c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001b40:	0404b503          	ld	a0,64(s1)
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	914080e7          	jalr	-1772(ra) # 80001458 <_Z5emptyP6slab_s>
    80001b4c:	fa0512e3          	bnez	a0,80001af0 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    80001b50:	00048513          	mv	a0,s1
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	a08080e7          	jalr	-1528(ra) # 8000155c <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    80001b5c:	f95ff06f          	j	80001af0 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>

0000000080001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001b60:	fc010113          	addi	sp,sp,-64
    80001b64:	02113c23          	sd	ra,56(sp)
    80001b68:	02813823          	sd	s0,48(sp)
    80001b6c:	02913423          	sd	s1,40(sp)
    80001b70:	03213023          	sd	s2,32(sp)
    80001b74:	01313c23          	sd	s3,24(sp)
    80001b78:	01413823          	sd	s4,16(sp)
    80001b7c:	01513423          	sd	s5,8(sp)
    80001b80:	04010413          	addi	s0,sp,64
    80001b84:	00050993          	mv	s3,a0
    80001b88:	00058913          	mv	s2,a1
    80001b8c:	00060a13          	mv	s4,a2
    80001b90:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001b94:	0000a517          	auipc	a0,0xa
    80001b98:	ecc53503          	ld	a0,-308(a0) # 8000ba60 <_ZL13slabAllocator>
    80001b9c:	07050513          	addi	a0,a0,112
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	edc080e7          	jalr	-292(ra) # 80001a7c <_Z16kmem_cache_allocP12kmem_cache_s>
    80001ba8:	00050493          	mv	s1,a0
    newCache->slabs_empty = nullptr;
    80001bac:	04053023          	sd	zero,64(a0)
    newCache->slabs_partial = nullptr;
    80001bb0:	04053823          	sd	zero,80(a0)
    newCache->slabs_full = nullptr;
    80001bb4:	04053423          	sd	zero,72(a0)
    newCache->dtor = dtor;
    80001bb8:	07553823          	sd	s5,112(a0)
    newCache->ctor = ctor;
    80001bbc:	07453423          	sd	s4,104(a0)
    strcpy(name, newCache->cacheName);
    80001bc0:	00050593          	mv	a1,a0
    80001bc4:	00098513          	mv	a0,s3
    80001bc8:	fffff097          	auipc	ra,0xfffff
    80001bcc:	690080e7          	jalr	1680(ra) # 80001258 <_Z6strcpyPKcPc>
    newCache->obj_size = size;
    80001bd0:	0724b023          	sd	s2,96(s1)
    newCache->slab_size = getOptimalSlabSize(size);
    80001bd4:	00090513          	mv	a0,s2
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	b28080e7          	jalr	-1240(ra) # 80001700 <_Z18getOptimalSlabSizem>
    80001be0:	04a4bc23          	sd	a0,88(s1)
}
    80001be4:	00048513          	mv	a0,s1
    80001be8:	03813083          	ld	ra,56(sp)
    80001bec:	03013403          	ld	s0,48(sp)
    80001bf0:	02813483          	ld	s1,40(sp)
    80001bf4:	02013903          	ld	s2,32(sp)
    80001bf8:	01813983          	ld	s3,24(sp)
    80001bfc:	01013a03          	ld	s4,16(sp)
    80001c00:	00813a83          	ld	s5,8(sp)
    80001c04:	04010113          	addi	sp,sp,64
    80001c08:	00008067          	ret

0000000080001c0c <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    80001c0c:	fe010113          	addi	sp,sp,-32
    80001c10:	00113c23          	sd	ra,24(sp)
    80001c14:	00813823          	sd	s0,16(sp)
    80001c18:	00913423          	sd	s1,8(sp)
    80001c1c:	01213023          	sd	s2,0(sp)
    80001c20:	02010413          	addi	s0,sp,32
    80001c24:	00058913          	mv	s2,a1
    slab_t* slab = findSlab(cachep, objp);
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	b40080e7          	jalr	-1216(ra) # 80001768 <_Z8findSlabP12kmem_cache_sPKv>
    80001c30:	00050493          	mv	s1,a0
    KConsole::trapPrintString("Finding slab........\n");
    80001c34:	00007517          	auipc	a0,0x7
    80001c38:	48450513          	addi	a0,a0,1156 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001c3c:	00002097          	auipc	ra,0x2
    80001c40:	b54080e7          	jalr	-1196(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    if(slab == nullptr) return;
    80001c44:	04048463          	beqz	s1,80001c8c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x80>
    KConsole::trapPrintString("Found slab ");
    80001c48:	00007517          	auipc	a0,0x7
    80001c4c:	48850513          	addi	a0,a0,1160 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001c50:	00002097          	auipc	ra,0x2
    80001c54:	b40080e7          	jalr	-1216(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slab, 16); KConsole::trapPrintString("\n");
    80001c58:	00000613          	li	a2,0
    80001c5c:	01000593          	li	a1,16
    80001c60:	00048513          	mv	a0,s1
    80001c64:	00002097          	auipc	ra,0x2
    80001c68:	b70080e7          	jalr	-1168(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80001c6c:	00008517          	auipc	a0,0x8
    80001c70:	b0c50513          	addi	a0,a0,-1268 # 80009778 <CONSOLE_STATUS+0x768>
    80001c74:	00002097          	auipc	ra,0x2
    80001c78:	b1c080e7          	jalr	-1252(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    free_slab_object(slab, objp);
    80001c7c:	00090593          	mv	a1,s2
    80001c80:	00048513          	mv	a0,s1
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	cd4080e7          	jalr	-812(ra) # 80001958 <_Z16free_slab_objectP6slab_sPKv>
}
    80001c8c:	01813083          	ld	ra,24(sp)
    80001c90:	01013403          	ld	s0,16(sp)
    80001c94:	00813483          	ld	s1,8(sp)
    80001c98:	00013903          	ld	s2,0(sp)
    80001c9c:	02010113          	addi	sp,sp,32
    80001ca0:	00008067          	ret

0000000080001ca4 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    80001ca4:	fe010113          	addi	sp,sp,-32
    80001ca8:	00113c23          	sd	ra,24(sp)
    80001cac:	00813823          	sd	s0,16(sp)
    80001cb0:	00913423          	sd	s1,8(sp)
    80001cb4:	01213023          	sd	s2,0(sp)
    80001cb8:	02010413          	addi	s0,sp,32
    80001cbc:	00050913          	mv	s2,a0
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001cc0:	00007517          	auipc	a0,0x7
    80001cc4:	42050513          	addi	a0,a0,1056 # 800090e0 <CONSOLE_STATUS+0xd0>
    80001cc8:	00002097          	auipc	ra,0x2
    80001ccc:	ac8080e7          	jalr	-1336(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001cd0:	00007517          	auipc	a0,0x7
    80001cd4:	44850513          	addi	a0,a0,1096 # 80009118 <CONSOLE_STATUS+0x108>
    80001cd8:	00002097          	auipc	ra,0x2
    80001cdc:	ab8080e7          	jalr	-1352(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001ce0:	00090513          	mv	a0,s2
    80001ce4:	00002097          	auipc	ra,0x2
    80001ce8:	aac080e7          	jalr	-1364(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    80001cec:	00008517          	auipc	a0,0x8
    80001cf0:	a8c50513          	addi	a0,a0,-1396 # 80009778 <CONSOLE_STATUS+0x768>
    80001cf4:	00002097          	auipc	ra,0x2
    80001cf8:	a9c080e7          	jalr	-1380(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache slab size in blocks ");
    80001cfc:	00007517          	auipc	a0,0x7
    80001d00:	42c50513          	addi	a0,a0,1068 # 80009128 <CONSOLE_STATUS+0x118>
    80001d04:	00002097          	auipc	ra,0x2
    80001d08:	a8c080e7          	jalr	-1396(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->slab_size); KConsole::trapPrintString("\n");
    80001d0c:	00000613          	li	a2,0
    80001d10:	00a00593          	li	a1,10
    80001d14:	05893503          	ld	a0,88(s2)
    80001d18:	00002097          	auipc	ra,0x2
    80001d1c:	abc080e7          	jalr	-1348(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80001d20:	00008517          	auipc	a0,0x8
    80001d24:	a5850513          	addi	a0,a0,-1448 # 80009778 <CONSOLE_STATUS+0x768>
    80001d28:	00002097          	auipc	ra,0x2
    80001d2c:	a68080e7          	jalr	-1432(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache obj size in bytes ");
    80001d30:	00007517          	auipc	a0,0x7
    80001d34:	41850513          	addi	a0,a0,1048 # 80009148 <CONSOLE_STATUS+0x138>
    80001d38:	00002097          	auipc	ra,0x2
    80001d3c:	a58080e7          	jalr	-1448(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->obj_size); KConsole::trapPrintString("\n");
    80001d40:	00000613          	li	a2,0
    80001d44:	00a00593          	li	a1,10
    80001d48:	06093503          	ld	a0,96(s2)
    80001d4c:	00002097          	auipc	ra,0x2
    80001d50:	a88080e7          	jalr	-1400(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80001d54:	00008517          	auipc	a0,0x8
    80001d58:	a2450513          	addi	a0,a0,-1500 # 80009778 <CONSOLE_STATUS+0x768>
    80001d5c:	00002097          	auipc	ra,0x2
    80001d60:	a34080e7          	jalr	-1484(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001d64:	00007517          	auipc	a0,0x7
    80001d68:	40450513          	addi	a0,a0,1028 # 80009168 <CONSOLE_STATUS+0x158>
    80001d6c:	00002097          	auipc	ra,0x2
    80001d70:	a24080e7          	jalr	-1500(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001d74:	00007517          	auipc	a0,0x7
    80001d78:	41450513          	addi	a0,a0,1044 # 80009188 <CONSOLE_STATUS+0x178>
    80001d7c:	00002097          	auipc	ra,0x2
    80001d80:	a14080e7          	jalr	-1516(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001d84:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001d88:	00048c63          	beqz	s1,80001da0 <_Z15kmem_cache_infoP12kmem_cache_s+0xfc>
    {
        printSlabInfo(slab);
    80001d8c:	00048513          	mv	a0,s1
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	aa4080e7          	jalr	-1372(ra) # 80001834 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001d98:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001d9c:	fedff06f          	j	80001d88 <_Z15kmem_cache_infoP12kmem_cache_s+0xe4>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001da0:	00007517          	auipc	a0,0x7
    80001da4:	3f850513          	addi	a0,a0,1016 # 80009198 <CONSOLE_STATUS+0x188>
    80001da8:	00002097          	auipc	ra,0x2
    80001dac:	9e8080e7          	jalr	-1560(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001db0:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001db4:	00048c63          	beqz	s1,80001dcc <_Z15kmem_cache_infoP12kmem_cache_s+0x128>
    {
        printSlabInfo(slab);
    80001db8:	00048513          	mv	a0,s1
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	a78080e7          	jalr	-1416(ra) # 80001834 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001dc4:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001dc8:	fedff06f          	j	80001db4 <_Z15kmem_cache_infoP12kmem_cache_s+0x110>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001dcc:	00007517          	auipc	a0,0x7
    80001dd0:	3dc50513          	addi	a0,a0,988 # 800091a8 <CONSOLE_STATUS+0x198>
    80001dd4:	00002097          	auipc	ra,0x2
    80001dd8:	9bc080e7          	jalr	-1604(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001ddc:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001de0:	00048c63          	beqz	s1,80001df8 <_Z15kmem_cache_infoP12kmem_cache_s+0x154>
    {
        printSlabInfo(slab);
    80001de4:	00048513          	mv	a0,s1
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	a4c080e7          	jalr	-1460(ra) # 80001834 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001df0:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001df4:	fedff06f          	j	80001de0 <_Z15kmem_cache_infoP12kmem_cache_s+0x13c>
    }
}
    80001df8:	01813083          	ld	ra,24(sp)
    80001dfc:	01013403          	ld	s0,16(sp)
    80001e00:	00813483          	ld	s1,8(sp)
    80001e04:	00013903          	ld	s2,0(sp)
    80001e08:	02010113          	addi	sp,sp,32
    80001e0c:	00008067          	ret

0000000080001e10 <_Z22printSlabAllocatorInfov>:
{
    80001e10:	fe010113          	addi	sp,sp,-32
    80001e14:	00113c23          	sd	ra,24(sp)
    80001e18:	00813823          	sd	s0,16(sp)
    80001e1c:	00913423          	sd	s1,8(sp)
    80001e20:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001e24:	00007517          	auipc	a0,0x7
    80001e28:	39450513          	addi	a0,a0,916 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80001e2c:	00002097          	auipc	ra,0x2
    80001e30:	964080e7          	jalr	-1692(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator buddy address ");
    80001e34:	00007517          	auipc	a0,0x7
    80001e38:	3d450513          	addi	a0,a0,980 # 80009208 <CONSOLE_STATUS+0x1f8>
    80001e3c:	00002097          	auipc	ra,0x2
    80001e40:	954080e7          	jalr	-1708(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slabAllocator->buddy,16);KConsole::trapPrintString("\n");
    80001e44:	0000a497          	auipc	s1,0xa
    80001e48:	c1c48493          	addi	s1,s1,-996 # 8000ba60 <_ZL13slabAllocator>
    80001e4c:	0004b783          	ld	a5,0(s1)
    80001e50:	00000613          	li	a2,0
    80001e54:	01000593          	li	a1,16
    80001e58:	0007b503          	ld	a0,0(a5)
    80001e5c:	00002097          	auipc	ra,0x2
    80001e60:	978080e7          	jalr	-1672(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80001e64:	00008517          	auipc	a0,0x8
    80001e68:	91450513          	addi	a0,a0,-1772 # 80009778 <CONSOLE_STATUS+0x768>
    80001e6c:	00002097          	auipc	ra,0x2
    80001e70:	924080e7          	jalr	-1756(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy allocator sizeof ");
    80001e74:	00007517          	auipc	a0,0x7
    80001e78:	3b450513          	addi	a0,a0,948 # 80009228 <CONSOLE_STATUS+0x218>
    80001e7c:	00002097          	auipc	ra,0x2
    80001e80:	914080e7          	jalr	-1772(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(sizeof(buddyAllocator), 16); KConsole::trapPrintString("\n");
    80001e84:	00000613          	li	a2,0
    80001e88:	01000593          	li	a1,16
    80001e8c:	0e000513          	li	a0,224
    80001e90:	00002097          	auipc	ra,0x2
    80001e94:	944080e7          	jalr	-1724(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80001e98:	00008517          	auipc	a0,0x8
    80001e9c:	8e050513          	addi	a0,a0,-1824 # 80009778 <CONSOLE_STATUS+0x768>
    80001ea0:	00002097          	auipc	ra,0x2
    80001ea4:	8f0080e7          	jalr	-1808(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator address ");
    80001ea8:	00007517          	auipc	a0,0x7
    80001eac:	39850513          	addi	a0,a0,920 # 80009240 <CONSOLE_STATUS+0x230>
    80001eb0:	00002097          	auipc	ra,0x2
    80001eb4:	8e0080e7          	jalr	-1824(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slabAllocator,16); KConsole::trapPrintString("\n");
    80001eb8:	00000613          	li	a2,0
    80001ebc:	01000593          	li	a1,16
    80001ec0:	0004b503          	ld	a0,0(s1)
    80001ec4:	00002097          	auipc	ra,0x2
    80001ec8:	910080e7          	jalr	-1776(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80001ecc:	00008517          	auipc	a0,0x8
    80001ed0:	8ac50513          	addi	a0,a0,-1876 # 80009778 <CONSOLE_STATUS+0x768>
    80001ed4:	00002097          	auipc	ra,0x2
    80001ed8:	8bc080e7          	jalr	-1860(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache of caches info\n");
    80001edc:	00007517          	auipc	a0,0x7
    80001ee0:	37c50513          	addi	a0,a0,892 # 80009258 <CONSOLE_STATUS+0x248>
    80001ee4:	00002097          	auipc	ra,0x2
    80001ee8:	8ac080e7          	jalr	-1876(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001eec:	0004b503          	ld	a0,0(s1)
    80001ef0:	07050513          	addi	a0,a0,112
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	db0080e7          	jalr	-592(ra) # 80001ca4 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001efc:	00007517          	auipc	a0,0x7
    80001f00:	37450513          	addi	a0,a0,884 # 80009270 <CONSOLE_STATUS+0x260>
    80001f04:	00002097          	auipc	ra,0x2
    80001f08:	88c080e7          	jalr	-1908(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001f0c:	00000493          	li	s1,0
    80001f10:	0100006f          	j	80001f20 <_Z22printSlabAllocatorInfov+0x110>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	d90080e7          	jalr	-624(ra) # 80001ca4 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001f1c:	00148493          	addi	s1,s1,1
    80001f20:	00c00793          	li	a5,12
    80001f24:	0297e063          	bltu	a5,s1,80001f44 <_Z22printSlabAllocatorInfov+0x134>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80001f28:	00349793          	slli	a5,s1,0x3
    80001f2c:	0000a717          	auipc	a4,0xa
    80001f30:	b3473703          	ld	a4,-1228(a4) # 8000ba60 <_ZL13slabAllocator>
    80001f34:	00f707b3          	add	a5,a4,a5
    80001f38:	0087b503          	ld	a0,8(a5)
    80001f3c:	fc051ce3          	bnez	a0,80001f14 <_Z22printSlabAllocatorInfov+0x104>
    80001f40:	fddff06f          	j	80001f1c <_Z22printSlabAllocatorInfov+0x10c>
}
    80001f44:	01813083          	ld	ra,24(sp)
    80001f48:	01013403          	ld	s0,16(sp)
    80001f4c:	00813483          	ld	s1,8(sp)
    80001f50:	02010113          	addi	sp,sp,32
    80001f54:	00008067          	ret

0000000080001f58 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80001f58:	fe010113          	addi	sp,sp,-32
    80001f5c:	00113c23          	sd	ra,24(sp)
    80001f60:	00813823          	sd	s0,16(sp)
    80001f64:	00913423          	sd	s1,8(sp)
    80001f68:	01213023          	sd	s2,0(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(size);
    80001f70:	00001097          	auipc	ra,0x1
    80001f74:	b88080e7          	jalr	-1144(ra) # 80002af8 <_Z11getDeg2Ceilm>
    size_t index = level - CACHE_BUFFER_SMALL;
    80001f78:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    80001f7c:	0000a917          	auipc	s2,0xa
    80001f80:	ae493903          	ld	s2,-1308(s2) # 8000ba60 <_ZL13slabAllocator>
    80001f84:	00349793          	slli	a5,s1,0x3
    80001f88:	00f907b3          	add	a5,s2,a5
    80001f8c:	0087b783          	ld	a5,8(a5)
    80001f90:	02078c63          	beqz	a5,80001fc8 <_Z7kmallocm+0x70>
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80001f94:	00349493          	slli	s1,s1,0x3
    80001f98:	0000a517          	auipc	a0,0xa
    80001f9c:	ac853503          	ld	a0,-1336(a0) # 8000ba60 <_ZL13slabAllocator>
    80001fa0:	009504b3          	add	s1,a0,s1
    80001fa4:	0084b503          	ld	a0,8(s1)
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	ad4080e7          	jalr	-1324(ra) # 80001a7c <_Z16kmem_cache_allocP12kmem_cache_s>
}
    80001fb0:	01813083          	ld	ra,24(sp)
    80001fb4:	01013403          	ld	s0,16(sp)
    80001fb8:	00813483          	ld	s1,8(sp)
    80001fbc:	00013903          	ld	s2,0(sp)
    80001fc0:	02010113          	addi	sp,sp,32
    80001fc4:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001fc8:	07090513          	addi	a0,s2,112
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	ab0080e7          	jalr	-1360(ra) # 80001a7c <_Z16kmem_cache_allocP12kmem_cache_s>
    80001fd4:	00349793          	slli	a5,s1,0x3
    80001fd8:	00f90933          	add	s2,s2,a5
    80001fdc:	00a93423          	sd	a0,8(s2)
    80001fe0:	fb5ff06f          	j	80001f94 <_Z7kmallocm+0x3c>

0000000080001fe4 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    80001fe4:	fe010113          	addi	sp,sp,-32
    80001fe8:	00113c23          	sd	ra,24(sp)
    80001fec:	00813823          	sd	s0,16(sp)
    80001ff0:	00913423          	sd	s1,8(sp)
    80001ff4:	01213023          	sd	s2,0(sp)
    80001ff8:	02010413          	addi	s0,sp,32
    80001ffc:	00050913          	mv	s2,a0
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002000:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    80002004:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002008:	00c00793          	li	a5,12
    8000200c:	0297e863          	bltu	a5,s1,8000203c <_Z5kfreePKv+0x58>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80002010:	00349793          	slli	a5,s1,0x3
    80002014:	0000a717          	auipc	a4,0xa
    80002018:	a4c73703          	ld	a4,-1460(a4) # 8000ba60 <_ZL13slabAllocator>
    8000201c:	00f707b3          	add	a5,a4,a5
    80002020:	00090593          	mv	a1,s2
    80002024:	0087b503          	ld	a0,8(a5)
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	740080e7          	jalr	1856(ra) # 80001768 <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80002030:	00051663          	bnez	a0,8000203c <_Z5kfreePKv+0x58>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002034:	00148493          	addi	s1,s1,1
    80002038:	fd1ff06f          	j	80002008 <_Z5kfreePKv+0x24>
    }
    if(slab != nullptr)
    8000203c:	00050863          	beqz	a0,8000204c <_Z5kfreePKv+0x68>
    {
        free_slab_object(slab, objp);
    80002040:	00090593          	mv	a1,s2
    80002044:	00000097          	auipc	ra,0x0
    80002048:	914080e7          	jalr	-1772(ra) # 80001958 <_Z16free_slab_objectP6slab_sPKv>
    }
}
    8000204c:	01813083          	ld	ra,24(sp)
    80002050:	01013403          	ld	s0,16(sp)
    80002054:	00813483          	ld	s1,8(sp)
    80002058:	00013903          	ld	s2,0(sp)
    8000205c:	02010113          	addi	sp,sp,32
    80002060:	00008067          	ret

0000000080002064 <_Z17destroy_slab_listP6slab_s>:

void destroy_slab_list(slab_t* slab)
{
    if(slab == nullptr) return;
    80002064:	06050463          	beqz	a0,800020cc <_Z17destroy_slab_listP6slab_s+0x68>
{
    80002068:	fe010113          	addi	sp,sp,-32
    8000206c:	00113c23          	sd	ra,24(sp)
    80002070:	00813823          	sd	s0,16(sp)
    80002074:	00913423          	sd	s1,8(sp)
    80002078:	01213023          	sd	s2,0(sp)
    8000207c:	02010413          	addi	s0,sp,32
    80002080:	00050593          	mv	a1,a0
    size_t sz = slab->owner->slab_size;
    80002084:	01053783          	ld	a5,16(a0)
    80002088:	0587b903          	ld	s2,88(a5)
    while(slab != nullptr)
    8000208c:	02058463          	beqz	a1,800020b4 <_Z17destroy_slab_listP6slab_s+0x50>
    {
        slab_t* nextSlab = slab->next;
    80002090:	0085b483          	ld	s1,8(a1)
        buddy_free(slabAllocator->buddy, slab, sz);
    80002094:	00090613          	mv	a2,s2
    80002098:	0000a797          	auipc	a5,0xa
    8000209c:	9c87b783          	ld	a5,-1592(a5) # 8000ba60 <_ZL13slabAllocator>
    800020a0:	0007b503          	ld	a0,0(a5)
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	ff8080e7          	jalr	-8(ra) # 8000309c <_Z10buddy_freeP14buddyAllocatorPvm>
        slab = nextSlab;
    800020ac:	00048593          	mv	a1,s1
    while(slab != nullptr)
    800020b0:	fddff06f          	j	8000208c <_Z17destroy_slab_listP6slab_s+0x28>
    }
}
    800020b4:	01813083          	ld	ra,24(sp)
    800020b8:	01013403          	ld	s0,16(sp)
    800020bc:	00813483          	ld	s1,8(sp)
    800020c0:	00013903          	ld	s2,0(sp)
    800020c4:	02010113          	addi	sp,sp,32
    800020c8:	00008067          	ret
    800020cc:	00008067          	ret

00000000800020d0 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    800020d0:	fe010113          	addi	sp,sp,-32
    800020d4:	00113c23          	sd	ra,24(sp)
    800020d8:	00813823          	sd	s0,16(sp)
    800020dc:	00913423          	sd	s1,8(sp)
    800020e0:	02010413          	addi	s0,sp,32
    800020e4:	00050493          	mv	s1,a0
    destroy_slab_list(cachep->slabs_empty);
    800020e8:	04053503          	ld	a0,64(a0)
    800020ec:	00000097          	auipc	ra,0x0
    800020f0:	f78080e7          	jalr	-136(ra) # 80002064 <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_partial);
    800020f4:	0504b503          	ld	a0,80(s1)
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	f6c080e7          	jalr	-148(ra) # 80002064 <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_full);
    80002100:	0484b503          	ld	a0,72(s1)
    80002104:	00000097          	auipc	ra,0x0
    80002108:	f60080e7          	jalr	-160(ra) # 80002064 <_Z17destroy_slab_listP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    8000210c:	00048593          	mv	a1,s1
    80002110:	0000a517          	auipc	a0,0xa
    80002114:	95053503          	ld	a0,-1712(a0) # 8000ba60 <_ZL13slabAllocator>
    80002118:	07050513          	addi	a0,a0,112
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	af0080e7          	jalr	-1296(ra) # 80001c0c <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80002124:	01813083          	ld	ra,24(sp)
    80002128:	01013403          	ld	s0,16(sp)
    8000212c:	00813483          	ld	s1,8(sp)
    80002130:	02010113          	addi	sp,sp,32
    80002134:	00008067          	ret

0000000080002138 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00813423          	sd	s0,8(sp)
    80002140:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002144:	03f50513          	addi	a0,a0,63
    80002148:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000214c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80002150:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80002154:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80002158:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000215c:	00813403          	ld	s0,8(sp)
    80002160:	01010113          	addi	sp,sp,16
    80002164:	00008067          	ret

0000000080002168 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80002168:	ff010113          	addi	sp,sp,-16
    8000216c:	00813423          	sd	s0,8(sp)
    80002170:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80002174:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80002178:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000217c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002180:	00050513          	mv	a0,a0

    return result;
}
    80002184:	0005051b          	sext.w	a0,a0
    80002188:	00813403          	ld	s0,8(sp)
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret

0000000080002194 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80002194:	fd010113          	addi	sp,sp,-48
    80002198:	02113423          	sd	ra,40(sp)
    8000219c:	02813023          	sd	s0,32(sp)
    800021a0:	00913c23          	sd	s1,24(sp)
    800021a4:	01213823          	sd	s2,16(sp)
    800021a8:	01313423          	sd	s3,8(sp)
    800021ac:	03010413          	addi	s0,sp,48
    800021b0:	00050493          	mv	s1,a0
    800021b4:	00058913          	mv	s2,a1
    800021b8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800021bc:	00001537          	lui	a0,0x1
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	f78080e7          	jalr	-136(ra) # 80002138 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800021c8:	04050263          	beqz	a0,8000220c <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800021cc:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800021d0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800021d4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800021d8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800021dc:	01100793          	li	a5,17
    800021e0:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800021e4:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800021e8:	00050513          	mv	a0,a0

    return result;
    800021ec:	0005051b          	sext.w	a0,a0
}
    800021f0:	02813083          	ld	ra,40(sp)
    800021f4:	02013403          	ld	s0,32(sp)
    800021f8:	01813483          	ld	s1,24(sp)
    800021fc:	01013903          	ld	s2,16(sp)
    80002200:	00813983          	ld	s3,8(sp)
    80002204:	03010113          	addi	sp,sp,48
    80002208:	00008067          	ret
        return -1;
    8000220c:	fff00513          	li	a0,-1
    80002210:	fe1ff06f          	j	800021f0 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080002214 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80002214:	ff010113          	addi	sp,sp,-16
    80002218:	00813423          	sd	s0,8(sp)
    8000221c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002220:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80002224:	00000073          	ecall
}
    80002228:	00813403          	ld	s0,8(sp)
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret

0000000080002234 <_Z11thread_exitv>:

int thread_exit()
{
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80002240:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80002244:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002248:	00050513          	mv	a0,a0
    return result;
}
    8000224c:	0005051b          	sext.w	a0,a0
    80002250:	00813403          	ld	s0,8(sp)
    80002254:	01010113          	addi	sp,sp,16
    80002258:	00008067          	ret

000000008000225c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00813423          	sd	s0,8(sp)
    80002264:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80002268:	02059593          	slli	a1,a1,0x20
    8000226c:	0205d593          	srli	a1,a1,0x20
    80002270:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002274:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80002278:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000227c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002280:	00050513          	mv	a0,a0
    return result;
}
    80002284:	0005051b          	sext.w	a0,a0
    80002288:	00813403          	ld	s0,8(sp)
    8000228c:	01010113          	addi	sp,sp,16
    80002290:	00008067          	ret

0000000080002294 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00813423          	sd	s0,8(sp)
    8000229c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800022a0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800022a4:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800022a8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800022ac:	00050513          	mv	a0,a0
    return result;
}
    800022b0:	0005051b          	sext.w	a0,a0
    800022b4:	00813403          	ld	s0,8(sp)
    800022b8:	01010113          	addi	sp,sp,16
    800022bc:	00008067          	ret

00000000800022c0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00813423          	sd	s0,8(sp)
    800022c8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800022cc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800022d0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800022d4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800022d8:	00050513          	mv	a0,a0
    return result;
}
    800022dc:	0005051b          	sext.w	a0,a0
    800022e0:	00813403          	ld	s0,8(sp)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00813423          	sd	s0,8(sp)
    800022f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800022f8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800022fc:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80002300:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002304:	00050513          	mv	a0,a0
    return result;
}
    80002308:	0005051b          	sext.w	a0,a0
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00813423          	sd	s0,8(sp)
    80002320:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80002324:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80002328:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000232c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002330:	00050513          	mv	a0,a0
    return result;
}
    80002334:	0005051b          	sext.w	a0,a0
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80002350:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80002354:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80002358:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000235c:	00050513          	mv	a0,a0
    return result;
}
    80002360:	0005051b          	sext.w	a0,a0
    80002364:	00813403          	ld	s0,8(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80002370:	fd010113          	addi	sp,sp,-48
    80002374:	02113423          	sd	ra,40(sp)
    80002378:	02813023          	sd	s0,32(sp)
    8000237c:	00913c23          	sd	s1,24(sp)
    80002380:	01213823          	sd	s2,16(sp)
    80002384:	01313423          	sd	s3,8(sp)
    80002388:	03010413          	addi	s0,sp,48
    8000238c:	00050493          	mv	s1,a0
    80002390:	00058913          	mv	s2,a1
    80002394:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80002398:	00001537          	lui	a0,0x1
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	d9c080e7          	jalr	-612(ra) # 80002138 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800023a4:	04050263          	beqz	a0,800023e8 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800023a8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800023ac:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800023b0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800023b4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800023b8:	01400793          	li	a5,20
    800023bc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800023c0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023c4:	00050513          	mv	a0,a0
    return result;
    800023c8:	0005051b          	sext.w	a0,a0
}
    800023cc:	02813083          	ld	ra,40(sp)
    800023d0:	02013403          	ld	s0,32(sp)
    800023d4:	01813483          	ld	s1,24(sp)
    800023d8:	01013903          	ld	s2,16(sp)
    800023dc:	00813983          	ld	s3,8(sp)
    800023e0:	03010113          	addi	sp,sp,48
    800023e4:	00008067          	ret
        return -1;
    800023e8:	fff00513          	li	a0,-1
    800023ec:	fe1ff06f          	j	800023cc <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800023f0 <_Z4getcv>:

char getc()
{
    800023f0:	ff010113          	addi	sp,sp,-16
    800023f4:	00813423          	sd	s0,8(sp)
    800023f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800023fc:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80002400:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002404:	00050513          	mv	a0,a0
    return (char)result;
}
    80002408:	0ff57513          	andi	a0,a0,255
    8000240c:	00813403          	ld	s0,8(sp)
    80002410:	01010113          	addi	sp,sp,16
    80002414:	00008067          	ret

0000000080002418 <_Z4putcc>:

void putc(char c)
{
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00813423          	sd	s0,8(sp)
    80002420:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80002424:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80002428:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000242c:	00000073          	ecall
}
    80002430:	00813403          	ld	s0,8(sp)
    80002434:	01010113          	addi	sp,sp,16
    80002438:	00008067          	ret

000000008000243c <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00813423          	sd	s0,8(sp)
    80002444:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80002448:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    8000244c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002450:	00050513          	mv	a0,a0
    return (char)result;
}
    80002454:	0ff57513          	andi	a0,a0,255
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00813423          	sd	s0,8(sp)
    8000246c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002470:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80002474:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80002478:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000247c:	00050513          	mv	a0,a0
    return (char)result;
}
    80002480:	0ff57513          	andi	a0,a0,255
    80002484:	00813403          	ld	s0,8(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret

0000000080002490 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80002490:	ff010113          	addi	sp,sp,-16
    80002494:	00113423          	sd	ra,8(sp)
    80002498:	00813023          	sd	s0,0(sp)
    8000249c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	fc4080e7          	jalr	-60(ra) # 80002464 <_Z17thread_delete_pcbP7_thread>
    800024a8:	00813083          	ld	ra,8(sp)
    800024ac:	00013403          	ld	s0,0(sp)
    800024b0:	01010113          	addi	sp,sp,16
    800024b4:	00008067          	ret

00000000800024b8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800024b8:	ff010113          	addi	sp,sp,-16
    800024bc:	00113423          	sd	ra,8(sp)
    800024c0:	00813023          	sd	s0,0(sp)
    800024c4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800024c8:	00002097          	auipc	ra,0x2
    800024cc:	f20080e7          	jalr	-224(ra) # 800043e8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800024d0:	00009797          	auipc	a5,0x9
    800024d4:	5987b783          	ld	a5,1432(a5) # 8000ba68 <_ZN3PCB7runningE>
    800024d8:	0287b703          	ld	a4,40(a5)
    800024dc:	0307b503          	ld	a0,48(a5)
    800024e0:	000700e7          	jalr	a4

    thread_exit();
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	d50080e7          	jalr	-688(ra) # 80002234 <_Z11thread_exitv>
}
    800024ec:	00813083          	ld	ra,8(sp)
    800024f0:	00013403          	ld	s0,0(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00813423          	sd	s0,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    })
    80002508:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    8000250c:	00e53c23          	sd	a4,24(a0)
    80002510:	02053023          	sd	zero,32(a0)
    80002514:	02b53423          	sd	a1,40(a0)
    80002518:	02c53823          	sd	a2,48(a0)
    8000251c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002520:	000017b7          	lui	a5,0x1
    80002524:	00f686b3          	add	a3,a3,a5
    })
    80002528:	04d53423          	sd	a3,72(a0)
    8000252c:	00000797          	auipc	a5,0x0
    80002530:	f8c78793          	addi	a5,a5,-116 # 800024b8 <_ZN3PCB6runnerEv>
    80002534:	04f53823          	sd	a5,80(a0)
    80002538:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000253c:	00053423          	sd	zero,8(a0)
}
    80002540:	00813403          	ld	s0,8(sp)
    80002544:	01010113          	addi	sp,sp,16
    80002548:	00008067          	ret

000000008000254c <_ZN3PCB5startEv>:
{
    8000254c:	ff010113          	addi	sp,sp,-16
    80002550:	00113423          	sd	ra,8(sp)
    80002554:	00813023          	sd	s0,0(sp)
    80002558:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000255c:	00001097          	auipc	ra,0x1
    80002560:	488080e7          	jalr	1160(ra) # 800039e4 <_ZN9Scheduler3putEP3PCB>
}
    80002564:	00813083          	ld	ra,8(sp)
    80002568:	00013403          	ld	s0,0(sp)
    8000256c:	01010113          	addi	sp,sp,16
    80002570:	00008067          	ret

0000000080002574 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002574:	fe010113          	addi	sp,sp,-32
    80002578:	00113c23          	sd	ra,24(sp)
    8000257c:	00813823          	sd	s0,16(sp)
    80002580:	00913423          	sd	s1,8(sp)
    80002584:	01213023          	sd	s2,0(sp)
    80002588:	02010413          	addi	s0,sp,32
    PCB* old = running;
    8000258c:	00009497          	auipc	s1,0x9
    80002590:	4dc4b483          	ld	s1,1244(s1) # 8000ba68 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002594:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002598:	00100793          	li	a5,1
    8000259c:	04f70a63          	beq	a4,a5,800025f0 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800025a0:	00001097          	auipc	ra,0x1
    800025a4:	498080e7          	jalr	1176(ra) # 80003a38 <_ZN9Scheduler3getEv>
    800025a8:	00009917          	auipc	s2,0x9
    800025ac:	4c090913          	addi	s2,s2,1216 # 8000ba68 <_ZN3PCB7runningE>
    800025b0:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800025b4:	00100793          	li	a5,1
    800025b8:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800025bc:	00002097          	auipc	ra,0x2
    800025c0:	f20080e7          	jalr	-224(ra) # 800044dc <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800025c4:	00093583          	ld	a1,0(s2)
    800025c8:	04858593          	addi	a1,a1,72
    800025cc:	04848513          	addi	a0,s1,72
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	c68080e7          	jalr	-920(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800025d8:	01813083          	ld	ra,24(sp)
    800025dc:	01013403          	ld	s0,16(sp)
    800025e0:	00813483          	ld	s1,8(sp)
    800025e4:	00013903          	ld	s2,0(sp)
    800025e8:	02010113          	addi	sp,sp,32
    800025ec:	00008067          	ret
        Scheduler::put(old);
    800025f0:	00048513          	mv	a0,s1
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	3f0080e7          	jalr	1008(ra) # 800039e4 <_ZN9Scheduler3putEP3PCB>
    800025fc:	fa5ff06f          	j	800025a0 <_ZN3PCB8dispatchEv+0x2c>

0000000080002600 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002600:	ff010113          	addi	sp,sp,-16
    80002604:	00113423          	sd	ra,8(sp)
    80002608:	00813023          	sd	s0,0(sp)
    8000260c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80002610:	00002097          	auipc	ra,0x2
    80002614:	60c080e7          	jalr	1548(ra) # 80004c1c <_ZN15MemoryAllocator7kmallocEm>
}
    80002618:	00813083          	ld	ra,8(sp)
    8000261c:	00013403          	ld	s0,0(sp)
    80002620:	01010113          	addi	sp,sp,16
    80002624:	00008067          	ret

0000000080002628 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002628:	ff010113          	addi	sp,sp,-16
    8000262c:	00113423          	sd	ra,8(sp)
    80002630:	00813023          	sd	s0,0(sp)
    80002634:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80002638:	00002097          	auipc	ra,0x2
    8000263c:	648080e7          	jalr	1608(ra) # 80004c80 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002640:	00813083          	ld	ra,8(sp)
    80002644:	00013403          	ld	s0,0(sp)
    80002648:	01010113          	addi	sp,sp,16
    8000264c:	00008067          	ret

0000000080002650 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00113423          	sd	ra,8(sp)
    80002658:	00813023          	sd	s0,0(sp)
    8000265c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002660:	03853503          	ld	a0,56(a0)
    80002664:	00002097          	auipc	ra,0x2
    80002668:	61c080e7          	jalr	1564(ra) # 80004c80 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000267c:	fd010113          	addi	sp,sp,-48
    80002680:	02113423          	sd	ra,40(sp)
    80002684:	02813023          	sd	s0,32(sp)
    80002688:	00913c23          	sd	s1,24(sp)
    8000268c:	01213823          	sd	s2,16(sp)
    80002690:	01313423          	sd	s3,8(sp)
    80002694:	01413023          	sd	s4,0(sp)
    80002698:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    8000269c:	06000513          	li	a0,96
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	f60080e7          	jalr	-160(ra) # 80002600 <_ZN3PCBnwEm>
    800026a8:	00050493          	mv	s1,a0
    800026ac:	00000713          	li	a4,0
    800026b0:	00000693          	li	a3,0
    800026b4:	00000613          	li	a2,0
    800026b8:	00000593          	li	a1,0
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	e40080e7          	jalr	-448(ra) # 800024fc <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800026c4:	00100793          	li	a5,1
    800026c8:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800026cc:	00009917          	auipc	s2,0x9
    800026d0:	39c90913          	addi	s2,s2,924 # 8000ba68 <_ZN3PCB7runningE>
    800026d4:	00993023          	sd	s1,0(s2)
    800026d8:	00100a13          	li	s4,1
    800026dc:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800026e0:	00001537          	lui	a0,0x1
    800026e4:	00002097          	auipc	ra,0x2
    800026e8:	538080e7          	jalr	1336(ra) # 80004c1c <_ZN15MemoryAllocator7kmallocEm>
    800026ec:	00050993          	mv	s3,a0
    800026f0:	06000513          	li	a0,96
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	f0c080e7          	jalr	-244(ra) # 80002600 <_ZN3PCBnwEm>
    800026fc:	00050493          	mv	s1,a0
    80002700:	00200713          	li	a4,2
    80002704:	00098693          	mv	a3,s3
    80002708:	00000613          	li	a2,0
    8000270c:	00009597          	auipc	a1,0x9
    80002710:	2dc5b583          	ld	a1,732(a1) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002714:	00000097          	auipc	ra,0x0
    80002718:	de8080e7          	jalr	-536(ra) # 800024fc <_ZN3PCBC1EPFvPvES0_S0_m>
    8000271c:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002720:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002724:	00893503          	ld	a0,8(s2)
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	e24080e7          	jalr	-476(ra) # 8000254c <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002730:	00001537          	lui	a0,0x1
    80002734:	00002097          	auipc	ra,0x2
    80002738:	4e8080e7          	jalr	1256(ra) # 80004c1c <_ZN15MemoryAllocator7kmallocEm>
    8000273c:	00050993          	mv	s3,a0
    80002740:	06000513          	li	a0,96
    80002744:	00000097          	auipc	ra,0x0
    80002748:	ebc080e7          	jalr	-324(ra) # 80002600 <_ZN3PCBnwEm>
    8000274c:	00050493          	mv	s1,a0
    80002750:	00200713          	li	a4,2
    80002754:	00098693          	mv	a3,s3
    80002758:	00000613          	li	a2,0
    8000275c:	00009597          	auipc	a1,0x9
    80002760:	2b45b583          	ld	a1,692(a1) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002764:	00000097          	auipc	ra,0x0
    80002768:	d98080e7          	jalr	-616(ra) # 800024fc <_ZN3PCBC1EPFvPvES0_S0_m>
    8000276c:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80002770:	00048513          	mv	a0,s1
    80002774:	00000097          	auipc	ra,0x0
    80002778:	dd8080e7          	jalr	-552(ra) # 8000254c <_ZN3PCB5startEv>
}
    8000277c:	02813083          	ld	ra,40(sp)
    80002780:	02013403          	ld	s0,32(sp)
    80002784:	01813483          	ld	s1,24(sp)
    80002788:	01013903          	ld	s2,16(sp)
    8000278c:	00813983          	ld	s3,8(sp)
    80002790:	00013a03          	ld	s4,0(sp)
    80002794:	03010113          	addi	sp,sp,48
    80002798:	00008067          	ret

000000008000279c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00813423          	sd	s0,8(sp)
    800027a4:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800027a8:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800027ac:	ffd50513          	addi	a0,a0,-3
}
    800027b0:	00153513          	seqz	a0,a0
    800027b4:	00813403          	ld	s0,8(sp)
    800027b8:	01010113          	addi	sp,sp,16
    800027bc:	00008067          	ret

00000000800027c0 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800027c0:	ff010113          	addi	sp,sp,-16
    800027c4:	00113423          	sd	ra,8(sp)
    800027c8:	00813023          	sd	s0,0(sp)
    800027cc:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800027d0:	00009797          	auipc	a5,0x9
    800027d4:	29878793          	addi	a5,a5,664 # 8000ba68 <_ZN3PCB7runningE>
    800027d8:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800027dc:	0007b783          	ld	a5,0(a5)
    800027e0:	00300713          	li	a4,3
    800027e4:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	d8c080e7          	jalr	-628(ra) # 80002574 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800027f0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800027f4:	00002097          	auipc	ra,0x2
    800027f8:	cb0080e7          	jalr	-848(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    800027fc:	00813083          	ld	ra,8(sp)
    80002800:	00013403          	ld	s0,0(sp)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00113423          	sd	ra,8(sp)
    80002814:	00813023          	sd	s0,0(sp)
    80002818:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    8000281c:	00009797          	auipc	a5,0x9
    80002820:	2607b223          	sd	zero,612(a5) # 8000ba80 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002824:	00000097          	auipc	ra,0x0
    80002828:	d50080e7          	jalr	-688(ra) # 80002574 <_ZN3PCB8dispatchEv>
}
    8000282c:	00813083          	ld	ra,8(sp)
    80002830:	00013403          	ld	s0,0(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    8000284c:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002850:	00009717          	auipc	a4,0x9
    80002854:	21870713          	addi	a4,a4,536 # 8000ba68 <_ZN3PCB7runningE>
    80002858:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    8000285c:	00073703          	ld	a4,0(a4)
    80002860:	00009697          	auipc	a3,0x9
    80002864:	1806b683          	ld	a3,384(a3) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002868:	0006b683          	ld	a3,0(a3)
    8000286c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002870:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002874:	00001097          	auipc	ra,0x1
    80002878:	ff4080e7          	jalr	-12(ra) # 80003868 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	cf8080e7          	jalr	-776(ra) # 80002574 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002884:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002888:	00002097          	auipc	ra,0x2
    8000288c:	c1c080e7          	jalr	-996(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002890:	00813083          	ld	ra,8(sp)
    80002894:	00013403          	ld	s0,0(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret

00000000800028a0 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800028a0:	fd010113          	addi	sp,sp,-48
    800028a4:	02113423          	sd	ra,40(sp)
    800028a8:	02813023          	sd	s0,32(sp)
    800028ac:	00913c23          	sd	s1,24(sp)
    800028b0:	01213823          	sd	s2,16(sp)
    800028b4:	01313423          	sd	s3,8(sp)
    800028b8:	01413023          	sd	s4,0(sp)
    800028bc:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800028c0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800028c4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800028c8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800028cc:	06000513          	li	a0,96
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	d30080e7          	jalr	-720(ra) # 80002600 <_ZN3PCBnwEm>
    800028d8:	00050493          	mv	s1,a0
    800028dc:	00200713          	li	a4,2
    800028e0:	00009697          	auipc	a3,0x9
    800028e4:	1a86b683          	ld	a3,424(a3) # 8000ba88 <_ZN3PCB10savedRegA4E>
    800028e8:	000a0613          	mv	a2,s4
    800028ec:	00098593          	mv	a1,s3
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	c0c080e7          	jalr	-1012(ra) # 800024fc <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800028f8:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800028fc:	02048e63          	beqz	s1,80002938 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002900:	00048513          	mv	a0,s1
    80002904:	00000097          	auipc	ra,0x0
    80002908:	c48080e7          	jalr	-952(ra) # 8000254c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    8000290c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002910:	00002097          	auipc	ra,0x2
    80002914:	b94080e7          	jalr	-1132(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002918:	02813083          	ld	ra,40(sp)
    8000291c:	02013403          	ld	s0,32(sp)
    80002920:	01813483          	ld	s1,24(sp)
    80002924:	01013903          	ld	s2,16(sp)
    80002928:	00813983          	ld	s3,8(sp)
    8000292c:	00013a03          	ld	s4,0(sp)
    80002930:	03010113          	addi	sp,sp,48
    80002934:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002938:	fff00513          	li	a0,-1
    8000293c:	fd5ff06f          	j	80002910 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002940 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002940:	ff010113          	addi	sp,sp,-16
    80002944:	00113423          	sd	ra,8(sp)
    80002948:	00813023          	sd	s0,0(sp)
    8000294c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002950:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002954:	02050463          	beqz	a0,8000297c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	bf4080e7          	jalr	-1036(ra) # 8000254c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002960:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002964:	00002097          	auipc	ra,0x2
    80002968:	b40080e7          	jalr	-1216(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000296c:	00813083          	ld	ra,8(sp)
    80002970:	00013403          	ld	s0,0(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    8000297c:	fff00513          	li	a0,-1
    80002980:	fe5ff06f          	j	80002964 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002984 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002984:	fd010113          	addi	sp,sp,-48
    80002988:	02113423          	sd	ra,40(sp)
    8000298c:	02813023          	sd	s0,32(sp)
    80002990:	00913c23          	sd	s1,24(sp)
    80002994:	01213823          	sd	s2,16(sp)
    80002998:	01313423          	sd	s3,8(sp)
    8000299c:	01413023          	sd	s4,0(sp)
    800029a0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800029a4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800029a8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800029ac:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800029b0:	06000513          	li	a0,96
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	c4c080e7          	jalr	-948(ra) # 80002600 <_ZN3PCBnwEm>
    800029bc:	00050493          	mv	s1,a0
    800029c0:	00200713          	li	a4,2
    800029c4:	00009697          	auipc	a3,0x9
    800029c8:	0c46b683          	ld	a3,196(a3) # 8000ba88 <_ZN3PCB10savedRegA4E>
    800029cc:	000a0613          	mv	a2,s4
    800029d0:	00098593          	mv	a1,s3
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	b28080e7          	jalr	-1240(ra) # 800024fc <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800029dc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800029e0:	02048863          	beqz	s1,80002a10 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    800029e4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029e8:	00002097          	auipc	ra,0x2
    800029ec:	abc080e7          	jalr	-1348(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    800029f0:	02813083          	ld	ra,40(sp)
    800029f4:	02013403          	ld	s0,32(sp)
    800029f8:	01813483          	ld	s1,24(sp)
    800029fc:	01013903          	ld	s2,16(sp)
    80002a00:	00813983          	ld	s3,8(sp)
    80002a04:	00013a03          	ld	s4,0(sp)
    80002a08:	03010113          	addi	sp,sp,48
    80002a0c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002a10:	fff00513          	li	a0,-1
    80002a14:	fd5ff06f          	j	800029e8 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002a18 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002a18:	fe010113          	addi	sp,sp,-32
    80002a1c:	00113c23          	sd	ra,24(sp)
    80002a20:	00813823          	sd	s0,16(sp)
    80002a24:	00913423          	sd	s1,8(sp)
    80002a28:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002a2c:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002a30:	02048e63          	beqz	s1,80002a6c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002a34:	00048513          	mv	a0,s1
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	c18080e7          	jalr	-1000(ra) # 80002650 <_ZN3PCBD1Ev>
    80002a40:	00048513          	mv	a0,s1
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	be4080e7          	jalr	-1052(ra) # 80002628 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002a4c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002a50:	00002097          	auipc	ra,0x2
    80002a54:	a54080e7          	jalr	-1452(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a58:	01813083          	ld	ra,24(sp)
    80002a5c:	01013403          	ld	s0,16(sp)
    80002a60:	00813483          	ld	s1,8(sp)
    80002a64:	02010113          	addi	sp,sp,32
    80002a68:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002a6c:	00100513          	li	a0,1
    80002a70:	fe1ff06f          	j	80002a50 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002a74 <_Z12getBlockAddrm>:
    size_t level = getDeg2Ceil(numOfBlocks);
    addBlocks(buddy, addr, level); //adds free blocks
}

size_t getBlockAddr(size_t addr)
{
    80002a74:	ff010113          	addi	sp,sp,-16
    80002a78:	00813423          	sd	s0,8(sp)
    80002a7c:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002a80:	fffff7b7          	lui	a5,0xfffff
    80002a84:	00f57533          	and	a0,a0,a5
    80002a88:	00813403          	ld	s0,8(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret

0000000080002a94 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00113423          	sd	ra,8(sp)
    80002a9c:	00813023          	sd	s0,0(sp)
    80002aa0:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	fd0080e7          	jalr	-48(ra) # 80002a74 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002aac:	000017b7          	lui	a5,0x1
    80002ab0:	00f50533          	add	a0,a0,a5
    80002ab4:	00813083          	ld	ra,8(sp)
    80002ab8:	00013403          	ld	s0,0(sp)
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret

0000000080002ac4 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002ac4:	ff010113          	addi	sp,sp,-16
    80002ac8:	00813423          	sd	s0,8(sp)
    80002acc:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002ad0:	00000713          	li	a4,0
    size_t x = 1;
    80002ad4:	00100793          	li	a5,1
    while(x <= num)
    80002ad8:	00f56863          	bltu	a0,a5,80002ae8 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002adc:	00170713          	addi	a4,a4,1
        x<<=1;
    80002ae0:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002ae4:	ff5ff06f          	j	80002ad8 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002ae8:	fff70513          	addi	a0,a4,-1
    80002aec:	00813403          	ld	s0,8(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret

0000000080002af8 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002af8:	ff010113          	addi	sp,sp,-16
    80002afc:	00813423          	sd	s0,8(sp)
    80002b00:	01010413          	addi	s0,sp,16
    80002b04:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002b08:	00000513          	li	a0,0
    size_t x = 1;
    80002b0c:	00100793          	li	a5,1
    while(x < num)
    80002b10:	00e7f863          	bgeu	a5,a4,80002b20 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002b14:	00150513          	addi	a0,a0,1
        x<<=1;
    80002b18:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002b1c:	ff5ff06f          	j	80002b10 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002b20:	00813403          	ld	s0,8(sp)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00813423          	sd	s0,8(sp)
    80002b34:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002b38:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002b3c:	00260793          	addi	a5,a2,2
    80002b40:	00479793          	slli	a5,a5,0x4
    80002b44:	00f507b3          	add	a5,a0,a5
    80002b48:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002b4c:	02078463          	beqz	a5,80002b74 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002b50:	00260613          	addi	a2,a2,2
    80002b54:	00461613          	slli	a2,a2,0x4
    80002b58:	00c50633          	add	a2,a0,a2
    80002b5c:	00863783          	ld	a5,8(a2)
    80002b60:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002b64:	00b63423          	sd	a1,8(a2)
    }
}
    80002b68:	00813403          	ld	s0,8(sp)
    80002b6c:	01010113          	addi	sp,sp,16
    80002b70:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002b74:	00260613          	addi	a2,a2,2
    80002b78:	00461613          	slli	a2,a2,0x4
    80002b7c:	00c50633          	add	a2,a0,a2
    80002b80:	00b63423          	sd	a1,8(a2)
    80002b84:	00b63023          	sd	a1,0(a2)
    80002b88:	fe1ff06f          	j	80002b68 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002b8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00813423          	sd	s0,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002b98:	000017b7          	lui	a5,0x1
    80002b9c:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002ba0:	00853783          	ld	a5,8(a0)
    80002ba4:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002ba8:	00f677b3          	and	a5,a2,a5
    80002bac:	00078a63          	beqz	a5,80002bc0 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002bb0:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002bb4:	00813403          	ld	s0,8(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret
        return (size_t)addr + diff;
    80002bc0:	00c58533          	add	a0,a1,a2
    80002bc4:	ff1ff06f          	j	80002bb4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002bc8 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002bc8:	fd010113          	addi	sp,sp,-48
    80002bcc:	02113423          	sd	ra,40(sp)
    80002bd0:	02813023          	sd	s0,32(sp)
    80002bd4:	00913c23          	sd	s1,24(sp)
    80002bd8:	01213823          	sd	s2,16(sp)
    80002bdc:	01313423          	sd	s3,8(sp)
    80002be0:	01413023          	sd	s4,0(sp)
    80002be4:	03010413          	addi	s0,sp,48
    80002be8:	00050913          	mv	s2,a0
    80002bec:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002bf0:	06070a63          	beqz	a4,80002c64 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002bf4:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002bf8:	04c68663          	beq	a3,a2,80002c44 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002bfc:	fff68493          	addi	s1,a3,-1
    80002c00:	00048613          	mv	a2,s1
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	f88080e7          	jalr	-120(ra) # 80002b8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002c0c:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002c10:	00000713          	li	a4,0
    80002c14:	00048693          	mv	a3,s1
    80002c18:	00098613          	mv	a2,s3
    80002c1c:	00090513          	mv	a0,s2
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	fa8080e7          	jalr	-88(ra) # 80002bc8 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002c28:	00100713          	li	a4,1
    80002c2c:	00048693          	mv	a3,s1
    80002c30:	00098613          	mv	a2,s3
    80002c34:	000a0593          	mv	a1,s4
    80002c38:	00090513          	mv	a0,s2
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	f8c080e7          	jalr	-116(ra) # 80002bc8 <_Z5splitP14buddyAllocatorPvmmb>
}
    80002c44:	02813083          	ld	ra,40(sp)
    80002c48:	02013403          	ld	s0,32(sp)
    80002c4c:	01813483          	ld	s1,24(sp)
    80002c50:	01013903          	ld	s2,16(sp)
    80002c54:	00813983          	ld	s3,8(sp)
    80002c58:	00013a03          	ld	s4,0(sp)
    80002c5c:	03010113          	addi	sp,sp,48
    80002c60:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002c64:	00068613          	mv	a2,a3
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	ec4080e7          	jalr	-316(ra) # 80002b2c <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002c70:	fd5ff06f          	j	80002c44 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002c74 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002c74:	fd010113          	addi	sp,sp,-48
    80002c78:	02113423          	sd	ra,40(sp)
    80002c7c:	02813023          	sd	s0,32(sp)
    80002c80:	00913c23          	sd	s1,24(sp)
    80002c84:	01213823          	sd	s2,16(sp)
    80002c88:	01313423          	sd	s3,8(sp)
    80002c8c:	01413023          	sd	s4,0(sp)
    80002c90:	03010413          	addi	s0,sp,48
    80002c94:	00050913          	mv	s2,a0
    80002c98:	00058493          	mv	s1,a1
    KConsole::trapPrintString("Buddy allocation: ");
    80002c9c:	00006517          	auipc	a0,0x6
    80002ca0:	5ec50513          	addi	a0,a0,1516 # 80009288 <CONSOLE_STATUS+0x278>
    80002ca4:	00001097          	auipc	ra,0x1
    80002ca8:	aec080e7          	jalr	-1300(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    80002cac:	00000613          	li	a2,0
    80002cb0:	00a00593          	li	a1,10
    80002cb4:	00048513          	mv	a0,s1
    80002cb8:	00001097          	auipc	ra,0x1
    80002cbc:	b1c080e7          	jalr	-1252(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80002cc0:	00007517          	auipc	a0,0x7
    80002cc4:	ab850513          	addi	a0,a0,-1352 # 80009778 <CONSOLE_STATUS+0x768>
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	ac8080e7          	jalr	-1336(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    size_t level = getDeg2Ceil(numOfBlocks);
    80002cd0:	00048513          	mv	a0,s1
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	e24080e7          	jalr	-476(ra) # 80002af8 <_Z11getDeg2Ceilm>
    80002cdc:	00050a13          	mv	s4,a0
    KConsole::trapPrintString("Level: ");
    80002ce0:	00006517          	auipc	a0,0x6
    80002ce4:	5c050513          	addi	a0,a0,1472 # 800092a0 <CONSOLE_STATUS+0x290>
    80002ce8:	00001097          	auipc	ra,0x1
    80002cec:	aa8080e7          	jalr	-1368(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(level); KConsole::trapPrintString("\n");
    80002cf0:	00000613          	li	a2,0
    80002cf4:	00a00593          	li	a1,10
    80002cf8:	000a0513          	mv	a0,s4
    80002cfc:	00001097          	auipc	ra,0x1
    80002d00:	ad8080e7          	jalr	-1320(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80002d04:	00007517          	auipc	a0,0x7
    80002d08:	a7450513          	addi	a0,a0,-1420 # 80009778 <CONSOLE_STATUS+0x768>
    80002d0c:	00001097          	auipc	ra,0x1
    80002d10:	a84080e7          	jalr	-1404(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002d14:	000a0493          	mv	s1,s4
    80002d18:	01893783          	ld	a5,24(s2)
    80002d1c:	0a97e063          	bltu	a5,s1,80002dbc <_Z11buddy_allocP14buddyAllocatorm+0x148>
        if(buddy->bucket[i].first != nullptr)
    80002d20:	00248793          	addi	a5,s1,2
    80002d24:	00479793          	slli	a5,a5,0x4
    80002d28:	00f907b3          	add	a5,s2,a5
    80002d2c:	0007b983          	ld	s3,0(a5) # 1000 <_entry-0x7ffff000>
    80002d30:	00099663          	bnez	s3,80002d3c <_Z11buddy_allocP14buddyAllocatorm+0xc8>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002d34:	00148493          	addi	s1,s1,1
    80002d38:	fe1ff06f          	j	80002d18 <_Z11buddy_allocP14buddyAllocatorm+0xa4>
            KConsole::trapPrintString("Found the block:");
    80002d3c:	00006517          	auipc	a0,0x6
    80002d40:	56c50513          	addi	a0,a0,1388 # 800092a8 <CONSOLE_STATUS+0x298>
    80002d44:	00001097          	auipc	ra,0x1
    80002d48:	a4c080e7          	jalr	-1460(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
            KConsole::trapPrintInt((size_t)ret, 16); KConsole::trapPrintString("\n");
    80002d4c:	00000613          	li	a2,0
    80002d50:	01000593          	li	a1,16
    80002d54:	00098513          	mv	a0,s3
    80002d58:	00001097          	auipc	ra,0x1
    80002d5c:	a7c080e7          	jalr	-1412(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80002d60:	00007517          	auipc	a0,0x7
    80002d64:	a1850513          	addi	a0,a0,-1512 # 80009778 <CONSOLE_STATUS+0x768>
    80002d68:	00001097          	auipc	ra,0x1
    80002d6c:	a28080e7          	jalr	-1496(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
            buddy->bucket[i].first = ret->next;
    80002d70:	0009b703          	ld	a4,0(s3)
    80002d74:	00248793          	addi	a5,s1,2
    80002d78:	00479793          	slli	a5,a5,0x4
    80002d7c:	00f907b3          	add	a5,s2,a5
    80002d80:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002d84:	02070263          	beqz	a4,80002da8 <_Z11buddy_allocP14buddyAllocatorm+0x134>
            split(buddy, (void*)ret, level, i, true);
    80002d88:	00100713          	li	a4,1
    80002d8c:	00048693          	mv	a3,s1
    80002d90:	000a0613          	mv	a2,s4
    80002d94:	00098593          	mv	a1,s3
    80002d98:	00090513          	mv	a0,s2
    80002d9c:	00000097          	auipc	ra,0x0
    80002da0:	e2c080e7          	jalr	-468(ra) # 80002bc8 <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    80002da4:	01c0006f          	j	80002dc0 <_Z11buddy_allocP14buddyAllocatorm+0x14c>
                buddy->bucket[i].last = nullptr;
    80002da8:	00248793          	addi	a5,s1,2
    80002dac:	00479793          	slli	a5,a5,0x4
    80002db0:	00f907b3          	add	a5,s2,a5
    80002db4:	0007b423          	sd	zero,8(a5)
    80002db8:	fd1ff06f          	j	80002d88 <_Z11buddy_allocP14buddyAllocatorm+0x114>
    return nullptr;
    80002dbc:	00000993          	li	s3,0
}
    80002dc0:	00098513          	mv	a0,s3
    80002dc4:	02813083          	ld	ra,40(sp)
    80002dc8:	02013403          	ld	s0,32(sp)
    80002dcc:	01813483          	ld	s1,24(sp)
    80002dd0:	01013903          	ld	s2,16(sp)
    80002dd4:	00813983          	ld	s3,8(sp)
    80002dd8:	00013a03          	ld	s4,0(sp)
    80002ddc:	03010113          	addi	sp,sp,48
    80002de0:	00008067          	ret

0000000080002de4 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002de4:	fd010113          	addi	sp,sp,-48
    80002de8:	02113423          	sd	ra,40(sp)
    80002dec:	02813023          	sd	s0,32(sp)
    80002df0:	00913c23          	sd	s1,24(sp)
    80002df4:	01213823          	sd	s2,16(sp)
    80002df8:	01313423          	sd	s3,8(sp)
    80002dfc:	03010413          	addi	s0,sp,48
    80002e00:	00050493          	mv	s1,a0
    80002e04:	00058993          	mv	s3,a1
    80002e08:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002e0c:	01853783          	ld	a5,24(a0)
    80002e10:	02c78a63          	beq	a5,a2,80002e44 <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	d78080e7          	jalr	-648(ra) # 80002b8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002e1c:	00290793          	addi	a5,s2,2
    80002e20:	00479793          	slli	a5,a5,0x4
    80002e24:	00f487b3          	add	a5,s1,a5
    80002e28:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002e2c:	00000713          	li	a4,0
    while(curr != nullptr)
    80002e30:	0a078e63          	beqz	a5,80002eec <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002e34:	00a78e63          	beq	a5,a0,80002e50 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002e38:	00078713          	mv	a4,a5
        curr = curr->next;
    80002e3c:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002e40:	ff1ff06f          	j	80002e30 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	ce8080e7          	jalr	-792(ra) # 80002b2c <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002e4c:	0b40006f          	j	80002f00 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002e50:	04070863          	beqz	a4,80002ea0 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002e54:	0007b683          	ld	a3,0(a5)
    80002e58:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002e5c:	00290693          	addi	a3,s2,2
    80002e60:	00469693          	slli	a3,a3,0x4
    80002e64:	00d486b3          	add	a3,s1,a3
    80002e68:	0086b683          	ld	a3,8(a3)
    80002e6c:	02f68063          	beq	a3,a5,80002e8c <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002e70:	06a9f263          	bgeu	s3,a0,80002ed4 <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002e74:	00190613          	addi	a2,s2,1
    80002e78:	00098593          	mv	a1,s3
    80002e7c:	00048513          	mv	a0,s1
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	f64080e7          	jalr	-156(ra) # 80002de4 <_Z9addBlocksP14buddyAllocatorPvm>
    80002e88:	0780006f          	j	80002f00 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002e8c:	00290793          	addi	a5,s2,2
    80002e90:	00479793          	slli	a5,a5,0x4
    80002e94:	00f487b3          	add	a5,s1,a5
    80002e98:	00e7b423          	sd	a4,8(a5)
    80002e9c:	fd5ff06f          	j	80002e70 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002ea0:	0007b703          	ld	a4,0(a5)
    80002ea4:	00070c63          	beqz	a4,80002ebc <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002ea8:	00290793          	addi	a5,s2,2
    80002eac:	00479793          	slli	a5,a5,0x4
    80002eb0:	00f487b3          	add	a5,s1,a5
    80002eb4:	00e7b023          	sd	a4,0(a5)
    80002eb8:	fb9ff06f          	j	80002e70 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002ebc:	00290793          	addi	a5,s2,2
    80002ec0:	00479793          	slli	a5,a5,0x4
    80002ec4:	00f487b3          	add	a5,s1,a5
    80002ec8:	0007b423          	sd	zero,8(a5)
    80002ecc:	0007b023          	sd	zero,0(a5)
    80002ed0:	fa1ff06f          	j	80002e70 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80002ed4:	00190613          	addi	a2,s2,1
    80002ed8:	00050593          	mv	a1,a0
    80002edc:	00048513          	mv	a0,s1
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	f04080e7          	jalr	-252(ra) # 80002de4 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002ee8:	0180006f          	j	80002f00 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80002eec:	00090613          	mv	a2,s2
    80002ef0:	00098593          	mv	a1,s3
    80002ef4:	00048513          	mv	a0,s1
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	c34080e7          	jalr	-972(ra) # 80002b2c <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80002f00:	02813083          	ld	ra,40(sp)
    80002f04:	02013403          	ld	s0,32(sp)
    80002f08:	01813483          	ld	s1,24(sp)
    80002f0c:	01013903          	ld	s2,16(sp)
    80002f10:	00813983          	ld	s3,8(sp)
    80002f14:	03010113          	addi	sp,sp,48
    80002f18:	00008067          	ret

0000000080002f1c <_Z10buddy_initPvm>:
{
    80002f1c:	fd010113          	addi	sp,sp,-48
    80002f20:	02113423          	sd	ra,40(sp)
    80002f24:	02813023          	sd	s0,32(sp)
    80002f28:	00913c23          	sd	s1,24(sp)
    80002f2c:	01213823          	sd	s2,16(sp)
    80002f30:	01313423          	sd	s3,8(sp)
    80002f34:	01413023          	sd	s4,0(sp)
    80002f38:	03010413          	addi	s0,sp,48
    80002f3c:	00050913          	mv	s2,a0
    80002f40:	00058993          	mv	s3,a1
    KConsole::trapPrintString("Buddy initialization\n");
    80002f44:	00006517          	auipc	a0,0x6
    80002f48:	37c50513          	addi	a0,a0,892 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80002f4c:	00001097          	auipc	ra,0x1
    80002f50:	844080e7          	jalr	-1980(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002f54:	00090493          	mv	s1,s2
    80002f58:	00090513          	mv	a0,s2
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	b18080e7          	jalr	-1256(ra) # 80002a74 <_Z12getBlockAddrm>
    80002f64:	00050a13          	mv	s4,a0
    KConsole::trapPrintInt(blockAddr,16); KConsole::trapPrintString("\n");
    80002f68:	00000613          	li	a2,0
    80002f6c:	01000593          	li	a1,16
    80002f70:	00001097          	auipc	ra,0x1
    80002f74:	864080e7          	jalr	-1948(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80002f78:	00007517          	auipc	a0,0x7
    80002f7c:	80050513          	addi	a0,a0,-2048 # 80009778 <CONSOLE_STATUS+0x768>
    80002f80:	00001097          	auipc	ra,0x1
    80002f84:	810080e7          	jalr	-2032(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr,16); KConsole::trapPrintString("\n");
    80002f88:	00000613          	li	a2,0
    80002f8c:	01000593          	li	a1,16
    80002f90:	00090513          	mv	a0,s2
    80002f94:	00001097          	auipc	ra,0x1
    80002f98:	840080e7          	jalr	-1984(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80002f9c:	00006517          	auipc	a0,0x6
    80002fa0:	7dc50513          	addi	a0,a0,2012 # 80009778 <CONSOLE_STATUS+0x768>
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	7ec080e7          	jalr	2028(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002fac:	01490c63          	beq	s2,s4,80002fc4 <_Z10buddy_initPvm+0xa8>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002fb0:	000a0513          	mv	a0,s4
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	ae0080e7          	jalr	-1312(ra) # 80002a94 <_Z16getNextBlockAddrm>
    80002fbc:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    80002fc0:	fff98993          	addi	s3,s3,-1
    KConsole::trapPrintString("Buddy metadata address: ");
    80002fc4:	00006517          	auipc	a0,0x6
    80002fc8:	31450513          	addi	a0,a0,788 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80002fcc:	00000097          	auipc	ra,0x0
    80002fd0:	7c4080e7          	jalr	1988(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr,16); KConsole::trapPrintString("\n");
    80002fd4:	00000613          	li	a2,0
    80002fd8:	01000593          	li	a1,16
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	7f4080e7          	jalr	2036(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80002fe8:	00006517          	auipc	a0,0x6
    80002fec:	79050513          	addi	a0,a0,1936 # 80009778 <CONSOLE_STATUS+0x768>
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	7a0080e7          	jalr	1952(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    numOfBlocks--; // take one block for buddy metadata
    80002ff8:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002ffc:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80003000:	00048513          	mv	a0,s1
    80003004:	00000097          	auipc	ra,0x0
    80003008:	a90080e7          	jalr	-1392(ra) # 80002a94 <_Z16getNextBlockAddrm>
    8000300c:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    80003010:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80003014:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80003018:	00098513          	mv	a0,s3
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	aa8080e7          	jalr	-1368(ra) # 80002ac4 <_Z12getDeg2Floorm>
    80003024:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003028:	00000713          	li	a4,0
    8000302c:	02e56063          	bltu	a0,a4,8000304c <_Z10buddy_initPvm+0x130>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80003030:	00270793          	addi	a5,a4,2
    80003034:	00479793          	slli	a5,a5,0x4
    80003038:	00f907b3          	add	a5,s2,a5
    8000303c:	0007b423          	sd	zero,8(a5)
    80003040:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003044:	00170713          	addi	a4,a4,1
    80003048:	fe5ff06f          	j	8000302c <_Z10buddy_initPvm+0x110>
    for(size_t i = 0;i < numOfBlocks;i++)
    8000304c:	00000493          	li	s1,0
    80003050:	0334f463          	bgeu	s1,s3,80003078 <_Z10buddy_initPvm+0x15c>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80003054:	00893583          	ld	a1,8(s2)
    80003058:	00c49793          	slli	a5,s1,0xc
    8000305c:	00000613          	li	a2,0
    80003060:	00f585b3          	add	a1,a1,a5
    80003064:	00090513          	mv	a0,s2
    80003068:	00000097          	auipc	ra,0x0
    8000306c:	d7c080e7          	jalr	-644(ra) # 80002de4 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003070:	00148493          	addi	s1,s1,1
    80003074:	fddff06f          	j	80003050 <_Z10buddy_initPvm+0x134>
}
    80003078:	00090513          	mv	a0,s2
    8000307c:	02813083          	ld	ra,40(sp)
    80003080:	02013403          	ld	s0,32(sp)
    80003084:	01813483          	ld	s1,24(sp)
    80003088:	01013903          	ld	s2,16(sp)
    8000308c:	00813983          	ld	s3,8(sp)
    80003090:	00013a03          	ld	s4,0(sp)
    80003094:	03010113          	addi	sp,sp,48
    80003098:	00008067          	ret

000000008000309c <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    8000309c:	fd010113          	addi	sp,sp,-48
    800030a0:	02113423          	sd	ra,40(sp)
    800030a4:	02813023          	sd	s0,32(sp)
    800030a8:	00913c23          	sd	s1,24(sp)
    800030ac:	01213823          	sd	s2,16(sp)
    800030b0:	01313423          	sd	s3,8(sp)
    800030b4:	03010413          	addi	s0,sp,48
    800030b8:	00050993          	mv	s3,a0
    800030bc:	00058493          	mv	s1,a1
    800030c0:	00060913          	mv	s2,a2
    KConsole::trapPrintString("Buddy free: ");
    800030c4:	00006517          	auipc	a0,0x6
    800030c8:	23450513          	addi	a0,a0,564 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	6c4080e7          	jalr	1732(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)addr,16); KConsole::trapPrintString(" ");
    800030d4:	00000613          	li	a2,0
    800030d8:	01000593          	li	a1,16
    800030dc:	00048513          	mv	a0,s1
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	6f4080e7          	jalr	1780(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    800030e8:	00006517          	auipc	a0,0x6
    800030ec:	22050513          	addi	a0,a0,544 # 80009308 <CONSOLE_STATUS+0x2f8>
    800030f0:	00000097          	auipc	ra,0x0
    800030f4:	6a0080e7          	jalr	1696(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    800030f8:	00000613          	li	a2,0
    800030fc:	00a00593          	li	a1,10
    80003100:	00090513          	mv	a0,s2
    80003104:	00000097          	auipc	ra,0x0
    80003108:	6d0080e7          	jalr	1744(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    8000310c:	00006517          	auipc	a0,0x6
    80003110:	66c50513          	addi	a0,a0,1644 # 80009778 <CONSOLE_STATUS+0x768>
    80003114:	00000097          	auipc	ra,0x0
    80003118:	67c080e7          	jalr	1660(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    size_t level = getDeg2Ceil(numOfBlocks);
    8000311c:	00090513          	mv	a0,s2
    80003120:	00000097          	auipc	ra,0x0
    80003124:	9d8080e7          	jalr	-1576(ra) # 80002af8 <_Z11getDeg2Ceilm>
    80003128:	00050613          	mv	a2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    8000312c:	00048593          	mv	a1,s1
    80003130:	00098513          	mv	a0,s3
    80003134:	00000097          	auipc	ra,0x0
    80003138:	cb0080e7          	jalr	-848(ra) # 80002de4 <_Z9addBlocksP14buddyAllocatorPvm>
}
    8000313c:	02813083          	ld	ra,40(sp)
    80003140:	02013403          	ld	s0,32(sp)
    80003144:	01813483          	ld	s1,24(sp)
    80003148:	01013903          	ld	s2,16(sp)
    8000314c:	00813983          	ld	s3,8(sp)
    80003150:	03010113          	addi	sp,sp,48
    80003154:	00008067          	ret

0000000080003158 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    80003158:	fd010113          	addi	sp,sp,-48
    8000315c:	02113423          	sd	ra,40(sp)
    80003160:	02813023          	sd	s0,32(sp)
    80003164:	00913c23          	sd	s1,24(sp)
    80003168:	01213823          	sd	s2,16(sp)
    8000316c:	01313423          	sd	s3,8(sp)
    80003170:	03010413          	addi	s0,sp,48
    80003174:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80003178:	00006517          	auipc	a0,0x6
    8000317c:	19850513          	addi	a0,a0,408 # 80009310 <CONSOLE_STATUS+0x300>
    80003180:	00000097          	auipc	ra,0x0
    80003184:	610080e7          	jalr	1552(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy starting address ");
    80003188:	00006517          	auipc	a0,0x6
    8000318c:	1c050513          	addi	a0,a0,448 # 80009348 <CONSOLE_STATUS+0x338>
    80003190:	00000097          	auipc	ra,0x0
    80003194:	600080e7          	jalr	1536(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)buddy->startAddr, 16);KConsole::trapPrintString("\n");
    80003198:	00000613          	li	a2,0
    8000319c:	01000593          	li	a1,16
    800031a0:	0089b503          	ld	a0,8(s3)
    800031a4:	00000097          	auipc	ra,0x0
    800031a8:	630080e7          	jalr	1584(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    800031ac:	00006517          	auipc	a0,0x6
    800031b0:	5cc50513          	addi	a0,a0,1484 # 80009778 <CONSOLE_STATUS+0x768>
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	5dc080e7          	jalr	1500(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy number of blocks ");
    800031bc:	00006517          	auipc	a0,0x6
    800031c0:	1a450513          	addi	a0,a0,420 # 80009360 <CONSOLE_STATUS+0x350>
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	5cc080e7          	jalr	1484(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddy->numOfBlocks);KConsole::trapPrintString("\n");
    800031cc:	00000613          	li	a2,0
    800031d0:	00a00593          	li	a1,10
    800031d4:	0009b503          	ld	a0,0(s3)
    800031d8:	00000097          	auipc	ra,0x0
    800031dc:	5fc080e7          	jalr	1532(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    800031e0:	00006517          	auipc	a0,0x6
    800031e4:	59850513          	addi	a0,a0,1432 # 80009778 <CONSOLE_STATUS+0x768>
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	5a8080e7          	jalr	1448(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy number of free blocks ");
    800031f0:	00006517          	auipc	a0,0x6
    800031f4:	18850513          	addi	a0,a0,392 # 80009378 <CONSOLE_STATUS+0x368>
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	598080e7          	jalr	1432(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddy->numOfFreeBlocks); KConsole::trapPrintString("\n");
    80003200:	00000613          	li	a2,0
    80003204:	00a00593          	li	a1,10
    80003208:	0109b503          	ld	a0,16(s3)
    8000320c:	00000097          	auipc	ra,0x0
    80003210:	5c8080e7          	jalr	1480(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80003214:	00006517          	auipc	a0,0x6
    80003218:	56450513          	addi	a0,a0,1380 # 80009778 <CONSOLE_STATUS+0x768>
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	574080e7          	jalr	1396(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003224:	0189a903          	lw	s2,24(s3)
    80003228:	0080006f          	j	80003230 <_Z14printBuddyInfoP14buddyAllocator+0xd8>
    8000322c:	fff9091b          	addiw	s2,s2,-1
    80003230:	08094463          	bltz	s2,800032b8 <_Z14printBuddyInfoP14buddyAllocator+0x160>
    {
        KConsole::trapPrintString("Level ");
    80003234:	00006517          	auipc	a0,0x6
    80003238:	16450513          	addi	a0,a0,356 # 80009398 <CONSOLE_STATUS+0x388>
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	554080e7          	jalr	1364(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintInt(i);KConsole::trapPrintString("\n");
    80003244:	00000613          	li	a2,0
    80003248:	00a00593          	li	a1,10
    8000324c:	00090513          	mv	a0,s2
    80003250:	00000097          	auipc	ra,0x0
    80003254:	584080e7          	jalr	1412(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
    80003258:	00006517          	auipc	a0,0x6
    8000325c:	52050513          	addi	a0,a0,1312 # 80009778 <CONSOLE_STATUS+0x768>
    80003260:	00000097          	auipc	ra,0x0
    80003264:	530080e7          	jalr	1328(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintString("Free blocks on this level\n");
    80003268:	00006517          	auipc	a0,0x6
    8000326c:	13850513          	addi	a0,a0,312 # 800093a0 <CONSOLE_STATUS+0x390>
    80003270:	00000097          	auipc	ra,0x0
    80003274:	520080e7          	jalr	1312(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80003278:	00290793          	addi	a5,s2,2
    8000327c:	00479793          	slli	a5,a5,0x4
    80003280:	00f987b3          	add	a5,s3,a5
    80003284:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80003288:	fa0482e3          	beqz	s1,8000322c <_Z14printBuddyInfoP14buddyAllocator+0xd4>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    8000328c:	00000613          	li	a2,0
    80003290:	01000593          	li	a1,16
    80003294:	00048513          	mv	a0,s1
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	53c080e7          	jalr	1340(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    800032a0:	00006517          	auipc	a0,0x6
    800032a4:	4d850513          	addi	a0,a0,1240 # 80009778 <CONSOLE_STATUS+0x768>
    800032a8:	00000097          	auipc	ra,0x0
    800032ac:	4e8080e7          	jalr	1256(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    800032b0:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    800032b4:	fd5ff06f          	j	80003288 <_Z14printBuddyInfoP14buddyAllocator+0x130>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800032b8:	00006517          	auipc	a0,0x6
    800032bc:	10850513          	addi	a0,a0,264 # 800093c0 <CONSOLE_STATUS+0x3b0>
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	4d0080e7          	jalr	1232(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
    800032c8:	02813083          	ld	ra,40(sp)
    800032cc:	02013403          	ld	s0,32(sp)
    800032d0:	01813483          	ld	s1,24(sp)
    800032d4:	01013903          	ld	s2,16(sp)
    800032d8:	00813983          	ld	s3,8(sp)
    800032dc:	03010113          	addi	sp,sp,48
    800032e0:	00008067          	ret

00000000800032e4 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    800032e4:	fe010113          	addi	sp,sp,-32
    800032e8:	00113c23          	sd	ra,24(sp)
    800032ec:	00813823          	sd	s0,16(sp)
    800032f0:	00913423          	sd	s1,8(sp)
    800032f4:	01213023          	sd	s2,0(sp)
    800032f8:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    800032fc:	01800513          	li	a0,24
    80003300:	00002097          	auipc	ra,0x2
    80003304:	dd0080e7          	jalr	-560(ra) # 800050d0 <_ZN10KSemaphorenwEm>
    80003308:	00050493          	mv	s1,a0
    8000330c:	00000593          	li	a1,0
    80003310:	00002097          	auipc	ra,0x2
    80003314:	b5c080e7          	jalr	-1188(ra) # 80004e6c <_ZN10KSemaphoreC1Ei>
    80003318:	00008797          	auipc	a5,0x8
    8000331c:	7697bc23          	sd	s1,1912(a5) # 8000ba90 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003320:	01800513          	li	a0,24
    80003324:	00002097          	auipc	ra,0x2
    80003328:	dac080e7          	jalr	-596(ra) # 800050d0 <_ZN10KSemaphorenwEm>
    8000332c:	00050493          	mv	s1,a0
    80003330:	00000593          	li	a1,0
    80003334:	00002097          	auipc	ra,0x2
    80003338:	b38080e7          	jalr	-1224(ra) # 80004e6c <_ZN10KSemaphoreC1Ei>
    8000333c:	00008797          	auipc	a5,0x8
    80003340:	7497be23          	sd	s1,1884(a5) # 8000ba98 <_ZN8KConsole19hasCharactersOutputE>
}
    80003344:	01813083          	ld	ra,24(sp)
    80003348:	01013403          	ld	s0,16(sp)
    8000334c:	00813483          	ld	s1,8(sp)
    80003350:	00013903          	ld	s2,0(sp)
    80003354:	02010113          	addi	sp,sp,32
    80003358:	00008067          	ret
    8000335c:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003360:	00048513          	mv	a0,s1
    80003364:	00002097          	auipc	ra,0x2
    80003368:	e0c080e7          	jalr	-500(ra) # 80005170 <_ZN10KSemaphoredlEPv>
    8000336c:	00090513          	mv	a0,s2
    80003370:	0000e097          	auipc	ra,0xe
    80003374:	878080e7          	jalr	-1928(ra) # 80010be8 <_Unwind_Resume>
    80003378:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    8000337c:	00048513          	mv	a0,s1
    80003380:	00002097          	auipc	ra,0x2
    80003384:	df0080e7          	jalr	-528(ra) # 80005170 <_ZN10KSemaphoredlEPv>
    80003388:	00090513          	mv	a0,s2
    8000338c:	0000e097          	auipc	ra,0xe
    80003390:	85c080e7          	jalr	-1956(ra) # 80010be8 <_Unwind_Resume>

0000000080003394 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80003394:	00008697          	auipc	a3,0x8
    80003398:	6fc68693          	addi	a3,a3,1788 # 8000ba90 <_ZN8KConsole18hasCharactersInputE>
    8000339c:	0106b603          	ld	a2,16(a3)
    800033a0:	00160793          	addi	a5,a2,1
    800033a4:	00002737          	lui	a4,0x2
    800033a8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800033ac:	00e7f7b3          	and	a5,a5,a4
    800033b0:	0186b703          	ld	a4,24(a3)
    800033b4:	04e78263          	beq	a5,a4,800033f8 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800033b8:	ff010113          	addi	sp,sp,-16
    800033bc:	00113423          	sd	ra,8(sp)
    800033c0:	00813023          	sd	s0,0(sp)
    800033c4:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800033c8:	0000a717          	auipc	a4,0xa
    800033cc:	70870713          	addi	a4,a4,1800 # 8000dad0 <_ZN8KConsole11inputBufferE>
    800033d0:	00c70633          	add	a2,a4,a2
    800033d4:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800033d8:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800033dc:	0006b503          	ld	a0,0(a3)
    800033e0:	00002097          	auipc	ra,0x2
    800033e4:	ca8080e7          	jalr	-856(ra) # 80005088 <_ZN10KSemaphore6signalEv>
}
    800033e8:	00813083          	ld	ra,8(sp)
    800033ec:	00013403          	ld	s0,0(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret
    800033f8:	00008067          	ret

00000000800033fc <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800033fc:	00008797          	auipc	a5,0x8
    80003400:	5ac7b783          	ld	a5,1452(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003404:	0007b783          	ld	a5,0(a5)
    80003408:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    8000340c:	0017f793          	andi	a5,a5,1
    80003410:	02078063          	beqz	a5,80003430 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80003414:	00008797          	auipc	a5,0x8
    80003418:	5b47b783          	ld	a5,1460(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000341c:	0007b783          	ld	a5,0(a5)
    80003420:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003424:	00008797          	auipc	a5,0x8
    80003428:	68c7b783          	ld	a5,1676(a5) # 8000bab0 <_ZN8KConsole11pendingGetcE>
    8000342c:	00079463          	bnez	a5,80003434 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003430:	00008067          	ret
{
    80003434:	ff010113          	addi	sp,sp,-16
    80003438:	00113423          	sd	ra,8(sp)
    8000343c:	00813023          	sd	s0,0(sp)
    80003440:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003444:	fff78793          	addi	a5,a5,-1
    80003448:	00008717          	auipc	a4,0x8
    8000344c:	66f73423          	sd	a5,1640(a4) # 8000bab0 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003450:	00000097          	auipc	ra,0x0
    80003454:	f44080e7          	jalr	-188(ra) # 80003394 <_ZN8KConsole17putCharacterInputEc>
}
    80003458:	00813083          	ld	ra,8(sp)
    8000345c:	00013403          	ld	s0,0(sp)
    80003460:	01010113          	addi	sp,sp,16
    80003464:	00008067          	ret

0000000080003468 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003468:	fe010113          	addi	sp,sp,-32
    8000346c:	00113c23          	sd	ra,24(sp)
    80003470:	00813823          	sd	s0,16(sp)
    80003474:	00913423          	sd	s1,8(sp)
    80003478:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    8000347c:	00008497          	auipc	s1,0x8
    80003480:	61448493          	addi	s1,s1,1556 # 8000ba90 <_ZN8KConsole18hasCharactersInputE>
    80003484:	0004b503          	ld	a0,0(s1)
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	a88080e7          	jalr	-1400(ra) # 80004f10 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80003490:	0184b783          	ld	a5,24(s1)
    80003494:	0104b703          	ld	a4,16(s1)
    80003498:	04e78063          	beq	a5,a4,800034d8 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    8000349c:	0000a717          	auipc	a4,0xa
    800034a0:	63470713          	addi	a4,a4,1588 # 8000dad0 <_ZN8KConsole11inputBufferE>
    800034a4:	00f70733          	add	a4,a4,a5
    800034a8:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800034ac:	00178793          	addi	a5,a5,1
    800034b0:	00002737          	lui	a4,0x2
    800034b4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800034b8:	00e7f7b3          	and	a5,a5,a4
    800034bc:	00008717          	auipc	a4,0x8
    800034c0:	5ef73623          	sd	a5,1516(a4) # 8000baa8 <_ZN8KConsole9inputHeadE>
    return c;
}
    800034c4:	01813083          	ld	ra,24(sp)
    800034c8:	01013403          	ld	s0,16(sp)
    800034cc:	00813483          	ld	s1,8(sp)
    800034d0:	02010113          	addi	sp,sp,32
    800034d4:	00008067          	ret
        return -1;
    800034d8:	0ff00513          	li	a0,255
    800034dc:	fe9ff06f          	j	800034c4 <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800034e0 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800034e0:	00008697          	auipc	a3,0x8
    800034e4:	5b068693          	addi	a3,a3,1456 # 8000ba90 <_ZN8KConsole18hasCharactersInputE>
    800034e8:	0286b603          	ld	a2,40(a3)
    800034ec:	00160793          	addi	a5,a2,1
    800034f0:	00002737          	lui	a4,0x2
    800034f4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800034f8:	00e7f7b3          	and	a5,a5,a4
    800034fc:	0306b703          	ld	a4,48(a3)
    80003500:	04e78a63          	beq	a5,a4,80003554 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80003504:	ff010113          	addi	sp,sp,-16
    80003508:	00113423          	sd	ra,8(sp)
    8000350c:	00813023          	sd	s0,0(sp)
    80003510:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003514:	00068713          	mv	a4,a3
    80003518:	0386b683          	ld	a3,56(a3)
    8000351c:	00168693          	addi	a3,a3,1
    80003520:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003524:	00008697          	auipc	a3,0x8
    80003528:	5ac68693          	addi	a3,a3,1452 # 8000bad0 <_ZN8KConsole12outputBufferE>
    8000352c:	00c68633          	add	a2,a3,a2
    80003530:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003534:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003538:	00873503          	ld	a0,8(a4)
    8000353c:	00002097          	auipc	ra,0x2
    80003540:	b4c080e7          	jalr	-1204(ra) # 80005088 <_ZN10KSemaphore6signalEv>
}
    80003544:	00813083          	ld	ra,8(sp)
    80003548:	00013403          	ld	s0,0(sp)
    8000354c:	01010113          	addi	sp,sp,16
    80003550:	00008067          	ret
    80003554:	00008067          	ret

0000000080003558 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003558:	fe010113          	addi	sp,sp,-32
    8000355c:	00113c23          	sd	ra,24(sp)
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00913423          	sd	s1,8(sp)
    80003568:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    8000356c:	00008497          	auipc	s1,0x8
    80003570:	52448493          	addi	s1,s1,1316 # 8000ba90 <_ZN8KConsole18hasCharactersInputE>
    80003574:	0084b503          	ld	a0,8(s1)
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	998080e7          	jalr	-1640(ra) # 80004f10 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003580:	0304b783          	ld	a5,48(s1)
    80003584:	0284b703          	ld	a4,40(s1)
    80003588:	04e78063          	beq	a5,a4,800035c8 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    8000358c:	00008717          	auipc	a4,0x8
    80003590:	54470713          	addi	a4,a4,1348 # 8000bad0 <_ZN8KConsole12outputBufferE>
    80003594:	00f70733          	add	a4,a4,a5
    80003598:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    8000359c:	00178793          	addi	a5,a5,1
    800035a0:	00002737          	lui	a4,0x2
    800035a4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800035a8:	00e7f7b3          	and	a5,a5,a4
    800035ac:	00008717          	auipc	a4,0x8
    800035b0:	50f73a23          	sd	a5,1300(a4) # 8000bac0 <_ZN8KConsole10outputHeadE>
    return c;
}
    800035b4:	01813083          	ld	ra,24(sp)
    800035b8:	01013403          	ld	s0,16(sp)
    800035bc:	00813483          	ld	s1,8(sp)
    800035c0:	02010113          	addi	sp,sp,32
    800035c4:	00008067          	ret
        return -1;
    800035c8:	0ff00513          	li	a0,255
    800035cc:	fe9ff06f          	j	800035b4 <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800035d0 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800035d0:	ff010113          	addi	sp,sp,-16
    800035d4:	00113423          	sd	ra,8(sp)
    800035d8:	00813023          	sd	s0,0(sp)
    800035dc:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800035e0:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800035e4:	0ff57513          	andi	a0,a0,255
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	ef8080e7          	jalr	-264(ra) # 800034e0 <_ZN8KConsole18putCharacterOutputEc>
}
    800035f0:	00813083          	ld	ra,8(sp)
    800035f4:	00013403          	ld	s0,0(sp)
    800035f8:	01010113          	addi	sp,sp,16
    800035fc:	00008067          	ret

0000000080003600 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00113c23          	sd	ra,24(sp)
    80003608:	00813823          	sd	s0,16(sp)
    8000360c:	00913423          	sd	s1,8(sp)
    80003610:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003614:	00008717          	auipc	a4,0x8
    80003618:	47c70713          	addi	a4,a4,1148 # 8000ba90 <_ZN8KConsole18hasCharactersInputE>
    8000361c:	02073783          	ld	a5,32(a4)
    80003620:	00178793          	addi	a5,a5,1
    80003624:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80003628:	00000097          	auipc	ra,0x0
    8000362c:	e40080e7          	jalr	-448(ra) # 80003468 <_ZN8KConsole17getCharacterInputEv>
    80003630:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003634:	01b00793          	li	a5,27
    80003638:	02f51663          	bne	a0,a5,80003664 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    8000363c:	00d00793          	li	a5,13
    80003640:	02f48863          	beq	s1,a5,80003670 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003644:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003648:	00001097          	auipc	ra,0x1
    8000364c:	e5c080e7          	jalr	-420(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003650:	01813083          	ld	ra,24(sp)
    80003654:	01013403          	ld	s0,16(sp)
    80003658:	00813483          	ld	s1,8(sp)
    8000365c:	02010113          	addi	sp,sp,32
    80003660:	00008067          	ret
        putCharacterOutput(ch);
    80003664:	00000097          	auipc	ra,0x0
    80003668:	e7c080e7          	jalr	-388(ra) # 800034e0 <_ZN8KConsole18putCharacterOutputEc>
    8000366c:	fd1ff06f          	j	8000363c <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003670:	00d00513          	li	a0,13
    80003674:	00000097          	auipc	ra,0x0
    80003678:	e6c080e7          	jalr	-404(ra) # 800034e0 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    8000367c:	00a00513          	li	a0,10
    80003680:	00000097          	auipc	ra,0x0
    80003684:	e60080e7          	jalr	-416(ra) # 800034e0 <_ZN8KConsole18putCharacterOutputEc>
    80003688:	fbdff06f          	j	80003644 <_ZN8KConsole11getcHandlerEv+0x44>

000000008000368c <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    8000368c:	ff010113          	addi	sp,sp,-16
    80003690:	00813423          	sd	s0,8(sp)
    80003694:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003698:	00008517          	auipc	a0,0x8
    8000369c:	43053503          	ld	a0,1072(a0) # 8000bac8 <_ZN8KConsole11pendingPutcE>
    800036a0:	00153513          	seqz	a0,a0
    800036a4:	00813403          	ld	s0,8(sp)
    800036a8:	01010113          	addi	sp,sp,16
    800036ac:	00008067          	ret

00000000800036b0 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800036b0:	fe010113          	addi	sp,sp,-32
    800036b4:	00113c23          	sd	ra,24(sp)
    800036b8:	00813823          	sd	s0,16(sp)
    800036bc:	02010413          	addi	s0,sp,32
    800036c0:	0180006f          	j	800036d8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	b70080e7          	jalr	-1168(ra) # 80002234 <_Z11thread_exitv>
    800036cc:	0340006f          	j	80003700 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    800036d0:	fffff097          	auipc	ra,0xfffff
    800036d4:	b44080e7          	jalr	-1212(ra) # 80002214 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800036d8:	00008797          	auipc	a5,0x8
    800036dc:	3207b783          	ld	a5,800(a5) # 8000b9f8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800036e0:	0007c783          	lbu	a5,0(a5)
    800036e4:	00078e63          	beqz	a5,80003700 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800036e8:	00000097          	auipc	ra,0x0
    800036ec:	fa4080e7          	jalr	-92(ra) # 8000368c <_ZN8KConsole17outputBufferEmptyEv>
    800036f0:	00050863          	beqz	a0,80003700 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800036f4:	00008797          	auipc	a5,0x8
    800036f8:	3bc7b783          	ld	a5,956(a5) # 8000bab0 <_ZN8KConsole11pendingGetcE>
    800036fc:	fc0784e3          	beqz	a5,800036c4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003700:	00008797          	auipc	a5,0x8
    80003704:	2a87b783          	ld	a5,680(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003708:	0007b783          	ld	a5,0(a5)
    8000370c:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003710:	0207f793          	andi	a5,a5,32
    80003714:	fa078ee3          	beqz	a5,800036d0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003718:	00008797          	auipc	a5,0x8
    8000371c:	3b07b783          	ld	a5,944(a5) # 8000bac8 <_ZN8KConsole11pendingPutcE>
    80003720:	fa0788e3          	beqz	a5,800036d0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003724:	fffff097          	auipc	ra,0xfffff
    80003728:	d18080e7          	jalr	-744(ra) # 8000243c <_Z20sysCallGetCharOutputv>
    8000372c:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003730:	00008717          	auipc	a4,0x8
    80003734:	36070713          	addi	a4,a4,864 # 8000ba90 <_ZN8KConsole18hasCharactersInputE>
    80003738:	03873783          	ld	a5,56(a4)
    8000373c:	fff78793          	addi	a5,a5,-1
    80003740:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003744:	00008797          	auipc	a5,0x8
    80003748:	25c7b783          	ld	a5,604(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000374c:	0007b783          	ld	a5,0(a5)
    80003750:	fef44703          	lbu	a4,-17(s0)
    80003754:	00e78023          	sb	a4,0(a5)
    80003758:	f81ff06f          	j	800036d8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

000000008000375c <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00113423          	sd	ra,8(sp)
    80003764:	00813023          	sd	s0,0(sp)
    80003768:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    8000376c:	00000097          	auipc	ra,0x0
    80003770:	dec080e7          	jalr	-532(ra) # 80003558 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003774:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003778:	00001097          	auipc	ra,0x1
    8000377c:	d2c080e7          	jalr	-724(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003780:	00813083          	ld	ra,8(sp)
    80003784:	00013403          	ld	s0,0(sp)
    80003788:	01010113          	addi	sp,sp,16
    8000378c:	00008067          	ret

0000000080003790 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003790:	fe010113          	addi	sp,sp,-32
    80003794:	00113c23          	sd	ra,24(sp)
    80003798:	00813823          	sd	s0,16(sp)
    8000379c:	00913423          	sd	s1,8(sp)
    800037a0:	02010413          	addi	s0,sp,32
    800037a4:	00050493          	mv	s1,a0
    while (*string != '\0')
    800037a8:	0004c503          	lbu	a0,0(s1)
    800037ac:	00050a63          	beqz	a0,800037c0 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	d30080e7          	jalr	-720(ra) # 800034e0 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800037b8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800037bc:	fedff06f          	j	800037a8 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800037c0:	01813083          	ld	ra,24(sp)
    800037c4:	01013403          	ld	s0,16(sp)
    800037c8:	00813483          	ld	s1,8(sp)
    800037cc:	02010113          	addi	sp,sp,32
    800037d0:	00008067          	ret

00000000800037d4 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800037d4:	fb010113          	addi	sp,sp,-80
    800037d8:	04113423          	sd	ra,72(sp)
    800037dc:	04813023          	sd	s0,64(sp)
    800037e0:	02913c23          	sd	s1,56(sp)
    800037e4:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800037e8:	00006797          	auipc	a5,0x6
    800037ec:	c1878793          	addi	a5,a5,-1000 # 80009400 <CONSOLE_STATUS+0x3f0>
    800037f0:	0007b703          	ld	a4,0(a5)
    800037f4:	fce43423          	sd	a4,-56(s0)
    800037f8:	0087b703          	ld	a4,8(a5)
    800037fc:	fce43823          	sd	a4,-48(s0)
    80003800:	0107c783          	lbu	a5,16(a5)
    80003804:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003808:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    8000380c:	02b57733          	remu	a4,a0,a1
    80003810:	fe040693          	addi	a3,s0,-32
    80003814:	00e68733          	add	a4,a3,a4
    80003818:	fe874703          	lbu	a4,-24(a4)
    8000381c:	009687b3          	add	a5,a3,s1
    80003820:	0014849b          	addiw	s1,s1,1
    80003824:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003828:	00050793          	mv	a5,a0
    8000382c:	02b55533          	divu	a0,a0,a1
    80003830:	fcb7fee3          	bgeu	a5,a1,8000380c <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003834:	fff4849b          	addiw	s1,s1,-1
    80003838:	0004ce63          	bltz	s1,80003854 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    8000383c:	fe040793          	addi	a5,s0,-32
    80003840:	009787b3          	add	a5,a5,s1
    80003844:	fd87c503          	lbu	a0,-40(a5)
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	c98080e7          	jalr	-872(ra) # 800034e0 <_ZN8KConsole18putCharacterOutputEc>
    80003850:	fe5ff06f          	j	80003834 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003854:	04813083          	ld	ra,72(sp)
    80003858:	04013403          	ld	s0,64(sp)
    8000385c:	03813483          	ld	s1,56(sp)
    80003860:	05010113          	addi	sp,sp,80
    80003864:	00008067          	ret

0000000080003868 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00813423          	sd	s0,8(sp)
    80003870:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003874:	00008797          	auipc	a5,0x8
    80003878:	18c7b783          	ld	a5,396(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000387c:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003880:	00500793          	li	a5,5
    80003884:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003888:	0000c797          	auipc	a5,0xc
    8000388c:	2487b783          	ld	a5,584(a5) # 8000fad0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003890:	00000593          	li	a1,0
    while(curr != 0)
    80003894:	02078063          	beqz	a5,800038b4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003898:	02063683          	ld	a3,32(a2)
    8000389c:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800038a0:	00e6e863          	bltu	a3,a4,800038b0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800038a4:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800038a8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800038ac:	fe9ff06f          	j	80003894 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800038b0:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800038b4:	00058a63          	beqz	a1,800038c8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800038b8:	00c5b423          	sd	a2,8(a1)
}
    800038bc:	00813403          	ld	s0,8(sp)
    800038c0:	01010113          	addi	sp,sp,16
    800038c4:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800038c8:	0000c797          	auipc	a5,0xc
    800038cc:	20c7b423          	sd	a2,520(a5) # 8000fad0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800038d0:	fedff06f          	j	800038bc <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800038d4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    800038d4:	0000c517          	auipc	a0,0xc
    800038d8:	1fc53503          	ld	a0,508(a0) # 8000fad0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800038dc:	06050e63          	beqz	a0,80003958 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800038e0:	06050c63          	beqz	a0,80003958 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800038e4:	02053783          	ld	a5,32(a0)
    800038e8:	00008717          	auipc	a4,0x8
    800038ec:	0f873703          	ld	a4,248(a4) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800038f0:	00073703          	ld	a4,0(a4)
    800038f4:	06f76263          	bltu	a4,a5,80003958 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800038f8:	fe010113          	addi	sp,sp,-32
    800038fc:	00113c23          	sd	ra,24(sp)
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	02010413          	addi	s0,sp,32
    8000390c:	0180006f          	j	80003924 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003910:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003914:	00008717          	auipc	a4,0x8
    80003918:	0cc73703          	ld	a4,204(a4) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000391c:	00073703          	ld	a4,0(a4)
    80003920:	02f76263          	bltu	a4,a5,80003944 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003924:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003928:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	0b8080e7          	jalr	184(ra) # 800039e4 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003934:	0000c797          	auipc	a5,0xc
    80003938:	1897be23          	sd	s1,412(a5) # 8000fad0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    8000393c:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003940:	fc0498e3          	bnez	s1,80003910 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003944:	01813083          	ld	ra,24(sp)
    80003948:	01013403          	ld	s0,16(sp)
    8000394c:	00813483          	ld	s1,8(sp)
    80003950:	02010113          	addi	sp,sp,32
    80003954:	00008067          	ret
    80003958:	00008067          	ret

000000008000395c <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    8000395c:	ff010113          	addi	sp,sp,-16
    80003960:	00113423          	sd	ra,8(sp)
    80003964:	00813023          	sd	s0,0(sp)
    80003968:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    8000396c:	00001097          	auipc	ra,0x1
    80003970:	2b0080e7          	jalr	688(ra) # 80004c1c <_ZN15MemoryAllocator7kmallocEm>
}
    80003974:	00813083          	ld	ra,8(sp)
    80003978:	00013403          	ld	s0,0(sp)
    8000397c:	01010113          	addi	sp,sp,16
    80003980:	00008067          	ret

0000000080003984 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003984:	ff010113          	addi	sp,sp,-16
    80003988:	00113423          	sd	ra,8(sp)
    8000398c:	00813023          	sd	s0,0(sp)
    80003990:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003994:	00001097          	auipc	ra,0x1
    80003998:	2ec080e7          	jalr	748(ra) # 80004c80 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000399c:	00813083          	ld	ra,8(sp)
    800039a0:	00013403          	ld	s0,0(sp)
    800039a4:	01010113          	addi	sp,sp,16
    800039a8:	00008067          	ret

00000000800039ac <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    800039ac:	ff010113          	addi	sp,sp,-16
    800039b0:	00813423          	sd	s0,8(sp)
    800039b4:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    800039b8:	0000c797          	auipc	a5,0xc
    800039bc:	1207b783          	ld	a5,288(a5) # 8000fad8 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    800039c0:	00000513          	li	a0,0
    while(curr != 0)
    800039c4:	00078863          	beqz	a5,800039d4 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800039c8:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800039cc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800039d0:	ff5ff06f          	j	800039c4 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800039d4:	0005051b          	sext.w	a0,a0
    800039d8:	00813403          	ld	s0,8(sp)
    800039dc:	01010113          	addi	sp,sp,16
    800039e0:	00008067          	ret

00000000800039e4 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800039e4:	ff010113          	addi	sp,sp,-16
    800039e8:	00813423          	sd	s0,8(sp)
    800039ec:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800039f0:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800039f4:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800039f8:	0000c797          	auipc	a5,0xc
    800039fc:	0e07b783          	ld	a5,224(a5) # 8000fad8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a00:	02078263          	beqz	a5,80003a24 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003a04:	0000c797          	auipc	a5,0xc
    80003a08:	0d478793          	addi	a5,a5,212 # 8000fad8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a0c:	0087b703          	ld	a4,8(a5)
    80003a10:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003a14:	00a7b423          	sd	a0,8(a5)
    }
}
    80003a18:	00813403          	ld	s0,8(sp)
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003a24:	0000c797          	auipc	a5,0xc
    80003a28:	0b478793          	addi	a5,a5,180 # 8000fad8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a2c:	00a7b423          	sd	a0,8(a5)
    80003a30:	00a7b023          	sd	a0,0(a5)
    80003a34:	fe5ff06f          	j	80003a18 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003a38 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00813423          	sd	s0,8(sp)
    80003a40:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003a44:	0000c517          	auipc	a0,0xc
    80003a48:	09453503          	ld	a0,148(a0) # 8000fad8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a4c:	00050c63          	beqz	a0,80003a64 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003a50:	00853783          	ld	a5,8(a0)
    80003a54:	00078e63          	beqz	a5,80003a70 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003a58:	0000c717          	auipc	a4,0xc
    80003a5c:	08f73023          	sd	a5,128(a4) # 8000fad8 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003a60:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003a64:	00813403          	ld	s0,8(sp)
    80003a68:	01010113          	addi	sp,sp,16
    80003a6c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003a70:	0000c797          	auipc	a5,0xc
    80003a74:	06878793          	addi	a5,a5,104 # 8000fad8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a78:	0007b423          	sd	zero,8(a5)
    80003a7c:	0007b023          	sd	zero,0(a5)
    80003a80:	fe1ff06f          	j	80003a60 <_ZN9Scheduler3getEv+0x28>

0000000080003a84 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003a84:	fe010113          	addi	sp,sp,-32
    80003a88:	00113c23          	sd	ra,24(sp)
    80003a8c:	00813823          	sd	s0,16(sp)
    80003a90:	00913423          	sd	s1,8(sp)
    80003a94:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003a98:	0000c497          	auipc	s1,0xc
    80003a9c:	0404b483          	ld	s1,64(s1) # 8000fad8 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003aa0:	02048863          	beqz	s1,80003ad0 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003aa4:	00000613          	li	a2,0
    80003aa8:	01000593          	li	a1,16
    80003aac:	00048513          	mv	a0,s1
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	d24080e7          	jalr	-732(ra) # 800037d4 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003ab8:	00006517          	auipc	a0,0x6
    80003abc:	cc050513          	addi	a0,a0,-832 # 80009778 <CONSOLE_STATUS+0x768>
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	cd0080e7          	jalr	-816(ra) # 80003790 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003ac8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003acc:	fd5ff06f          	j	80003aa0 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003ad0:	01813083          	ld	ra,24(sp)
    80003ad4:	01013403          	ld	s0,16(sp)
    80003ad8:	00813483          	ld	s1,8(sp)
    80003adc:	02010113          	addi	sp,sp,32
    80003ae0:	00008067          	ret

0000000080003ae4 <main>:
#include "../h/Riscv.hpp"

void main()
{
    80003ae4:	ff010113          	addi	sp,sp,-16
    80003ae8:	00113423          	sd	ra,8(sp)
    80003aec:	00813023          	sd	s0,0(sp)
    80003af0:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003af4:	00001097          	auipc	ra,0x1
    80003af8:	914080e7          	jalr	-1772(ra) # 80004408 <_ZN5Riscv10kernelMainEv>
    80003afc:	00813083          	ld	ra,8(sp)
    80003b00:	00013403          	ld	s0,0(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"

void buddyInitTest1()
{
    80003b0c:	ff010113          	addi	sp,sp,-16
    80003b10:	00113423          	sd	ra,8(sp)
    80003b14:	00813023          	sd	s0,0(sp)
    80003b18:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003b1c:	01200593          	li	a1,18
    80003b20:	00008797          	auipc	a5,0x8
    80003b24:	e907b783          	ld	a5,-368(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b28:	0007b503          	ld	a0,0(a5)
    80003b2c:	fffff097          	auipc	ra,0xfffff
    80003b30:	3f0080e7          	jalr	1008(ra) # 80002f1c <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003b34:	fffff097          	auipc	ra,0xfffff
    80003b38:	624080e7          	jalr	1572(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003b3c:	00813083          	ld	ra,8(sp)
    80003b40:	00013403          	ld	s0,0(sp)
    80003b44:	01010113          	addi	sp,sp,16
    80003b48:	00008067          	ret

0000000080003b4c <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003b4c:	fe010113          	addi	sp,sp,-32
    80003b50:	00113c23          	sd	ra,24(sp)
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003b60:	00a00593          	li	a1,10
    80003b64:	00008797          	auipc	a5,0x8
    80003b68:	e4c7b783          	ld	a5,-436(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b6c:	0007b503          	ld	a0,0(a5)
    80003b70:	fffff097          	auipc	ra,0xfffff
    80003b74:	3ac080e7          	jalr	940(ra) # 80002f1c <_Z10buddy_initPvm>
    80003b78:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003b7c:	fffff097          	auipc	ra,0xfffff
    80003b80:	5dc080e7          	jalr	1500(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003b84:	00100593          	li	a1,1
    80003b88:	00048513          	mv	a0,s1
    80003b8c:	fffff097          	auipc	ra,0xfffff
    80003b90:	0e8080e7          	jalr	232(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003b94:	00048513          	mv	a0,s1
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	5c0080e7          	jalr	1472(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003ba0:	00100593          	li	a1,1
    80003ba4:	00048513          	mv	a0,s1
    80003ba8:	fffff097          	auipc	ra,0xfffff
    80003bac:	0cc080e7          	jalr	204(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003bb0:	00048513          	mv	a0,s1
    80003bb4:	fffff097          	auipc	ra,0xfffff
    80003bb8:	5a4080e7          	jalr	1444(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003bbc:	00100593          	li	a1,1
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	0b0080e7          	jalr	176(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003bcc:	00048513          	mv	a0,s1
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	588080e7          	jalr	1416(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003bd8:	00300593          	li	a1,3
    80003bdc:	00048513          	mv	a0,s1
    80003be0:	fffff097          	auipc	ra,0xfffff
    80003be4:	094080e7          	jalr	148(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003be8:	00048513          	mv	a0,s1
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	56c080e7          	jalr	1388(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003bf4:	01813083          	ld	ra,24(sp)
    80003bf8:	01013403          	ld	s0,16(sp)
    80003bfc:	00813483          	ld	s1,8(sp)
    80003c00:	02010113          	addi	sp,sp,32
    80003c04:	00008067          	ret

0000000080003c08 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003c08:	fe010113          	addi	sp,sp,-32
    80003c0c:	00113c23          	sd	ra,24(sp)
    80003c10:	00813823          	sd	s0,16(sp)
    80003c14:	00913423          	sd	s1,8(sp)
    80003c18:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003c1c:	00a00593          	li	a1,10
    80003c20:	00008797          	auipc	a5,0x8
    80003c24:	d907b783          	ld	a5,-624(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003c28:	0007b503          	ld	a0,0(a5)
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	2f0080e7          	jalr	752(ra) # 80002f1c <_Z10buddy_initPvm>
    80003c34:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003c38:	06400593          	li	a1,100
    80003c3c:	fffff097          	auipc	ra,0xfffff
    80003c40:	038080e7          	jalr	56(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003c44:	00050c63          	beqz	a0,80003c5c <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003c48:	01813083          	ld	ra,24(sp)
    80003c4c:	01013403          	ld	s0,16(sp)
    80003c50:	00813483          	ld	s1,8(sp)
    80003c54:	02010113          	addi	sp,sp,32
    80003c58:	00008067          	ret
        printBuddyInfo(buddy);
    80003c5c:	00048513          	mv	a0,s1
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	4f8080e7          	jalr	1272(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003c68:	fe1ff06f          	j	80003c48 <_Z20buddyOnlyAllocsTest2v+0x40>

0000000080003c6c <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003c6c:	fd010113          	addi	sp,sp,-48
    80003c70:	02113423          	sd	ra,40(sp)
    80003c74:	02813023          	sd	s0,32(sp)
    80003c78:	00913c23          	sd	s1,24(sp)
    80003c7c:	01213823          	sd	s2,16(sp)
    80003c80:	01313423          	sd	s3,8(sp)
    80003c84:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003c88:	00a00593          	li	a1,10
    80003c8c:	00008797          	auipc	a5,0x8
    80003c90:	d247b783          	ld	a5,-732(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003c94:	0007b503          	ld	a0,0(a5)
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	284080e7          	jalr	644(ra) # 80002f1c <_Z10buddy_initPvm>
    80003ca0:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	4b4080e7          	jalr	1204(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003cac:	00100593          	li	a1,1
    80003cb0:	00048513          	mv	a0,s1
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	fc0080e7          	jalr	-64(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    80003cbc:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	fffff097          	auipc	ra,0xfffff
    80003cc8:	494080e7          	jalr	1172(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003ccc:	00100613          	li	a2,1
    80003cd0:	00090593          	mv	a1,s2
    80003cd4:	00048513          	mv	a0,s1
    80003cd8:	fffff097          	auipc	ra,0xfffff
    80003cdc:	3c4080e7          	jalr	964(ra) # 8000309c <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	fffff097          	auipc	ra,0xfffff
    80003ce8:	474080e7          	jalr	1140(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003cec:	00200593          	li	a1,2
    80003cf0:	00048513          	mv	a0,s1
    80003cf4:	fffff097          	auipc	ra,0xfffff
    80003cf8:	f80080e7          	jalr	-128(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    80003cfc:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003d00:	00300593          	li	a1,3
    80003d04:	00048513          	mv	a0,s1
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	f6c080e7          	jalr	-148(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    80003d10:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003d14:	00048513          	mv	a0,s1
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	440080e7          	jalr	1088(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003d20:	00200613          	li	a2,2
    80003d24:	00090593          	mv	a1,s2
    80003d28:	00048513          	mv	a0,s1
    80003d2c:	fffff097          	auipc	ra,0xfffff
    80003d30:	370080e7          	jalr	880(ra) # 8000309c <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d34:	00048513          	mv	a0,s1
    80003d38:	fffff097          	auipc	ra,0xfffff
    80003d3c:	420080e7          	jalr	1056(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003d40:	00100593          	li	a1,1
    80003d44:	00048513          	mv	a0,s1
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	f2c080e7          	jalr	-212(ra) # 80002c74 <_Z11buddy_allocP14buddyAllocatorm>
    80003d50:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003d54:	00048513          	mv	a0,s1
    80003d58:	fffff097          	auipc	ra,0xfffff
    80003d5c:	400080e7          	jalr	1024(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003d60:	00300613          	li	a2,3
    80003d64:	00098593          	mv	a1,s3
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	330080e7          	jalr	816(ra) # 8000309c <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d74:	00048513          	mv	a0,s1
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	3e0080e7          	jalr	992(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003d80:	00100613          	li	a2,1
    80003d84:	00090593          	mv	a1,s2
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	fffff097          	auipc	ra,0xfffff
    80003d90:	310080e7          	jalr	784(ra) # 8000309c <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d94:	00048513          	mv	a0,s1
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	3c0080e7          	jalr	960(ra) # 80003158 <_Z14printBuddyInfoP14buddyAllocator>
    80003da0:	02813083          	ld	ra,40(sp)
    80003da4:	02013403          	ld	s0,32(sp)
    80003da8:	01813483          	ld	s1,24(sp)
    80003dac:	01013903          	ld	s2,16(sp)
    80003db0:	00813983          	ld	s3,8(sp)
    80003db4:	03010113          	addi	sp,sp,48
    80003db8:	00008067          	ret

0000000080003dbc <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003dbc:	ff010113          	addi	sp,sp,-16
    80003dc0:	00113423          	sd	ra,8(sp)
    80003dc4:	00813023          	sd	s0,0(sp)
    80003dc8:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003dcc:	00053783          	ld	a5,0(a0)
    80003dd0:	0107b783          	ld	a5,16(a5)
    80003dd4:	000780e7          	jalr	a5
}
    80003dd8:	00813083          	ld	ra,8(sp)
    80003ddc:	00013403          	ld	s0,0(sp)
    80003de0:	01010113          	addi	sp,sp,16
    80003de4:	00008067          	ret

0000000080003de8 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003de8:	00008797          	auipc	a5,0x8
    80003dec:	b6078793          	addi	a5,a5,-1184 # 8000b948 <_ZTV6Thread+0x10>
    80003df0:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003df4:	00853503          	ld	a0,8(a0)
    80003df8:	02050663          	beqz	a0,80003e24 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003dfc:	ff010113          	addi	sp,sp,-16
    80003e00:	00113423          	sd	ra,8(sp)
    80003e04:	00813023          	sd	s0,0(sp)
    80003e08:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	684080e7          	jalr	1668(ra) # 80002490 <_ZN7_threaddlEPv>
}
    80003e14:	00813083          	ld	ra,8(sp)
    80003e18:	00013403          	ld	s0,0(sp)
    80003e1c:	01010113          	addi	sp,sp,16
    80003e20:	00008067          	ret
    80003e24:	00008067          	ret

0000000080003e28 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003e28:	00008797          	auipc	a5,0x8
    80003e2c:	b4878793          	addi	a5,a5,-1208 # 8000b970 <_ZTV9Semaphore+0x10>
    80003e30:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003e34:	00853503          	ld	a0,8(a0)
    80003e38:	02050663          	beqz	a0,80003e64 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003e3c:	ff010113          	addi	sp,sp,-16
    80003e40:	00113423          	sd	ra,8(sp)
    80003e44:	00813023          	sd	s0,0(sp)
    80003e48:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003e4c:	00000097          	auipc	ra,0x0
    80003e50:	464080e7          	jalr	1124(ra) # 800042b0 <_ZN4_semdlEPv>
}
    80003e54:	00813083          	ld	ra,8(sp)
    80003e58:	00013403          	ld	s0,0(sp)
    80003e5c:	01010113          	addi	sp,sp,16
    80003e60:	00008067          	ret
    80003e64:	00008067          	ret

0000000080003e68 <_Znwm>:
{
    80003e68:	ff010113          	addi	sp,sp,-16
    80003e6c:	00113423          	sd	ra,8(sp)
    80003e70:	00813023          	sd	s0,0(sp)
    80003e74:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003e78:	ffffe097          	auipc	ra,0xffffe
    80003e7c:	2c0080e7          	jalr	704(ra) # 80002138 <_Z9mem_allocm>
}
    80003e80:	00813083          	ld	ra,8(sp)
    80003e84:	00013403          	ld	s0,0(sp)
    80003e88:	01010113          	addi	sp,sp,16
    80003e8c:	00008067          	ret

0000000080003e90 <_ZdlPv>:
{
    80003e90:	ff010113          	addi	sp,sp,-16
    80003e94:	00113423          	sd	ra,8(sp)
    80003e98:	00813023          	sd	s0,0(sp)
    80003e9c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	2c8080e7          	jalr	712(ra) # 80002168 <_Z8mem_freePv>
}
    80003ea8:	00813083          	ld	ra,8(sp)
    80003eac:	00013403          	ld	s0,0(sp)
    80003eb0:	01010113          	addi	sp,sp,16
    80003eb4:	00008067          	ret

0000000080003eb8 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003eb8:	fe010113          	addi	sp,sp,-32
    80003ebc:	00113c23          	sd	ra,24(sp)
    80003ec0:	00813823          	sd	s0,16(sp)
    80003ec4:	00913423          	sd	s1,8(sp)
    80003ec8:	02010413          	addi	s0,sp,32
    80003ecc:	00050493          	mv	s1,a0
}
    80003ed0:	00000097          	auipc	ra,0x0
    80003ed4:	f18080e7          	jalr	-232(ra) # 80003de8 <_ZN6ThreadD1Ev>
    80003ed8:	00048513          	mv	a0,s1
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	fb4080e7          	jalr	-76(ra) # 80003e90 <_ZdlPv>
    80003ee4:	01813083          	ld	ra,24(sp)
    80003ee8:	01013403          	ld	s0,16(sp)
    80003eec:	00813483          	ld	s1,8(sp)
    80003ef0:	02010113          	addi	sp,sp,32
    80003ef4:	00008067          	ret

0000000080003ef8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003ef8:	fe010113          	addi	sp,sp,-32
    80003efc:	00113c23          	sd	ra,24(sp)
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00913423          	sd	s1,8(sp)
    80003f08:	02010413          	addi	s0,sp,32
    80003f0c:	00050493          	mv	s1,a0
}
    80003f10:	00000097          	auipc	ra,0x0
    80003f14:	f18080e7          	jalr	-232(ra) # 80003e28 <_ZN9SemaphoreD1Ev>
    80003f18:	00048513          	mv	a0,s1
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	f74080e7          	jalr	-140(ra) # 80003e90 <_ZdlPv>
    80003f24:	01813083          	ld	ra,24(sp)
    80003f28:	01013403          	ld	s0,16(sp)
    80003f2c:	00813483          	ld	s1,8(sp)
    80003f30:	02010113          	addi	sp,sp,32
    80003f34:	00008067          	ret

0000000080003f38 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003f38:	00853503          	ld	a0,8(a0)
    80003f3c:	02050663          	beqz	a0,80003f68 <_ZN6Thread5startEv+0x30>
{
    80003f40:	ff010113          	addi	sp,sp,-16
    80003f44:	00113423          	sd	ra,8(sp)
    80003f48:	00813023          	sd	s0,0(sp)
    80003f4c:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	3f4080e7          	jalr	1012(ra) # 80002344 <_Z12thread_startPv>
}
    80003f58:	00813083          	ld	ra,8(sp)
    80003f5c:	00013403          	ld	s0,0(sp)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret
        return -1;
    80003f68:	fff00513          	li	a0,-1
}
    80003f6c:	00008067          	ret

0000000080003f70 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003f70:	ff010113          	addi	sp,sp,-16
    80003f74:	00113423          	sd	ra,8(sp)
    80003f78:	00813023          	sd	s0,0(sp)
    80003f7c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	294080e7          	jalr	660(ra) # 80002214 <_Z15thread_dispatchv>
}
    80003f88:	00813083          	ld	ra,8(sp)
    80003f8c:	00013403          	ld	s0,0(sp)
    80003f90:	01010113          	addi	sp,sp,16
    80003f94:	00008067          	ret

0000000080003f98 <_ZN6Thread5sleepEm>:
{
    80003f98:	ff010113          	addi	sp,sp,-16
    80003f9c:	00113423          	sd	ra,8(sp)
    80003fa0:	00813023          	sd	s0,0(sp)
    80003fa4:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	370080e7          	jalr	880(ra) # 80002318 <_Z10time_sleepm>
}
    80003fb0:	00813083          	ld	ra,8(sp)
    80003fb4:	00013403          	ld	s0,0(sp)
    80003fb8:	01010113          	addi	sp,sp,16
    80003fbc:	00008067          	ret

0000000080003fc0 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003fc0:	fe010113          	addi	sp,sp,-32
    80003fc4:	00113c23          	sd	ra,24(sp)
    80003fc8:	00813823          	sd	s0,16(sp)
    80003fcc:	00913423          	sd	s1,8(sp)
    80003fd0:	01213023          	sd	s2,0(sp)
    80003fd4:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003fd8:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003fdc:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003fe0:	0004b783          	ld	a5,0(s1)
    80003fe4:	0187b783          	ld	a5,24(a5)
    80003fe8:	00048513          	mv	a0,s1
    80003fec:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003ff0:	00090513          	mv	a0,s2
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	fa4080e7          	jalr	-92(ra) # 80003f98 <_ZN6Thread5sleepEm>
    while(true)
    80003ffc:	fe5ff06f          	j	80003fe0 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080004000 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80004000:	ff010113          	addi	sp,sp,-16
    80004004:	00113423          	sd	ra,8(sp)
    80004008:	00813023          	sd	s0,0(sp)
    8000400c:	01010413          	addi	s0,sp,16
    80004010:	00008797          	auipc	a5,0x8
    80004014:	93878793          	addi	a5,a5,-1736 # 8000b948 <_ZTV6Thread+0x10>
    80004018:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    8000401c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80004020:	00850513          	addi	a0,a0,8
    80004024:	ffffe097          	auipc	ra,0xffffe
    80004028:	34c080e7          	jalr	844(ra) # 80002370 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000402c:	00813083          	ld	ra,8(sp)
    80004030:	00013403          	ld	s0,0(sp)
    80004034:	01010113          	addi	sp,sp,16
    80004038:	00008067          	ret

000000008000403c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000403c:	ff010113          	addi	sp,sp,-16
    80004040:	00113423          	sd	ra,8(sp)
    80004044:	00813023          	sd	s0,0(sp)
    80004048:	01010413          	addi	s0,sp,16
    8000404c:	00008797          	auipc	a5,0x8
    80004050:	8fc78793          	addi	a5,a5,-1796 # 8000b948 <_ZTV6Thread+0x10>
    80004054:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80004058:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    8000405c:	00050613          	mv	a2,a0
    80004060:	00000597          	auipc	a1,0x0
    80004064:	d5c58593          	addi	a1,a1,-676 # 80003dbc <_ZN6Thread6runnerEPv>
    80004068:	00850513          	addi	a0,a0,8
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	304080e7          	jalr	772(ra) # 80002370 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80004074:	00813083          	ld	ra,8(sp)
    80004078:	00013403          	ld	s0,0(sp)
    8000407c:	01010113          	addi	sp,sp,16
    80004080:	00008067          	ret

0000000080004084 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80004084:	00853503          	ld	a0,8(a0)
    80004088:	02050663          	beqz	a0,800040b4 <_ZN9Semaphore4waitEv+0x30>
{
    8000408c:	ff010113          	addi	sp,sp,-16
    80004090:	00113423          	sd	ra,8(sp)
    80004094:	00813023          	sd	s0,0(sp)
    80004098:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	224080e7          	jalr	548(ra) # 800022c0 <_Z8sem_waitP4_sem>
}
    800040a4:	00813083          	ld	ra,8(sp)
    800040a8:	00013403          	ld	s0,0(sp)
    800040ac:	01010113          	addi	sp,sp,16
    800040b0:	00008067          	ret
        return -1;
    800040b4:	fff00513          	li	a0,-1
}
    800040b8:	00008067          	ret

00000000800040bc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800040bc:	fe010113          	addi	sp,sp,-32
    800040c0:	00113c23          	sd	ra,24(sp)
    800040c4:	00813823          	sd	s0,16(sp)
    800040c8:	00913423          	sd	s1,8(sp)
    800040cc:	02010413          	addi	s0,sp,32
    800040d0:	00050493          	mv	s1,a0
    800040d4:	00008797          	auipc	a5,0x8
    800040d8:	89c78793          	addi	a5,a5,-1892 # 8000b970 <_ZTV9Semaphore+0x10>
    800040dc:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800040e0:	00850513          	addi	a0,a0,8
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	178080e7          	jalr	376(ra) # 8000225c <_Z8sem_openPP4_semj>
    if(retval != 0)
    800040ec:	00050463          	beqz	a0,800040f4 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800040f0:	0004b423          	sd	zero,8(s1)
}
    800040f4:	01813083          	ld	ra,24(sp)
    800040f8:	01013403          	ld	s0,16(sp)
    800040fc:	00813483          	ld	s1,8(sp)
    80004100:	02010113          	addi	sp,sp,32
    80004104:	00008067          	ret

0000000080004108 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80004108:	00853503          	ld	a0,8(a0)
    8000410c:	02050663          	beqz	a0,80004138 <_ZN9Semaphore6signalEv+0x30>
{
    80004110:	ff010113          	addi	sp,sp,-16
    80004114:	00113423          	sd	ra,8(sp)
    80004118:	00813023          	sd	s0,0(sp)
    8000411c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	1cc080e7          	jalr	460(ra) # 800022ec <_Z10sem_signalP4_sem>
}
    80004128:	00813083          	ld	ra,8(sp)
    8000412c:	00013403          	ld	s0,0(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret
        return -1;
    80004138:	fff00513          	li	a0,-1
}
    8000413c:	00008067          	ret

0000000080004140 <_ZN7Console4getcEv>:
{
    80004140:	ff010113          	addi	sp,sp,-16
    80004144:	00113423          	sd	ra,8(sp)
    80004148:	00813023          	sd	s0,0(sp)
    8000414c:	01010413          	addi	s0,sp,16
    return ::getc();
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	2a0080e7          	jalr	672(ra) # 800023f0 <_Z4getcv>
}
    80004158:	00813083          	ld	ra,8(sp)
    8000415c:	00013403          	ld	s0,0(sp)
    80004160:	01010113          	addi	sp,sp,16
    80004164:	00008067          	ret

0000000080004168 <_ZN7Console4putcEc>:
{
    80004168:	ff010113          	addi	sp,sp,-16
    8000416c:	00113423          	sd	ra,8(sp)
    80004170:	00813023          	sd	s0,0(sp)
    80004174:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	2a0080e7          	jalr	672(ra) # 80002418 <_Z4putcc>
}
    80004180:	00813083          	ld	ra,8(sp)
    80004184:	00013403          	ld	s0,0(sp)
    80004188:	01010113          	addi	sp,sp,16
    8000418c:	00008067          	ret

0000000080004190 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80004190:	fe010113          	addi	sp,sp,-32
    80004194:	00113c23          	sd	ra,24(sp)
    80004198:	00813823          	sd	s0,16(sp)
    8000419c:	00913423          	sd	s1,8(sp)
    800041a0:	01213023          	sd	s2,0(sp)
    800041a4:	02010413          	addi	s0,sp,32
    800041a8:	00050493          	mv	s1,a0
    800041ac:	00058913          	mv	s2,a1
    800041b0:	01000513          	li	a0,16
    800041b4:	00000097          	auipc	ra,0x0
    800041b8:	cb4080e7          	jalr	-844(ra) # 80003e68 <_Znwm>
    800041bc:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800041c0:	00953023          	sd	s1,0(a0)
    800041c4:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800041c8:	00000597          	auipc	a1,0x0
    800041cc:	df858593          	addi	a1,a1,-520 # 80003fc0 <_ZN14PeriodicThread6runnerEPv>
    800041d0:	00048513          	mv	a0,s1
    800041d4:	00000097          	auipc	ra,0x0
    800041d8:	e2c080e7          	jalr	-468(ra) # 80004000 <_ZN6ThreadC1EPFvPvES0_>
    800041dc:	00007797          	auipc	a5,0x7
    800041e0:	73c78793          	addi	a5,a5,1852 # 8000b918 <_ZTV14PeriodicThread+0x10>
    800041e4:	00f4b023          	sd	a5,0(s1)
}
    800041e8:	01813083          	ld	ra,24(sp)
    800041ec:	01013403          	ld	s0,16(sp)
    800041f0:	00813483          	ld	s1,8(sp)
    800041f4:	00013903          	ld	s2,0(sp)
    800041f8:	02010113          	addi	sp,sp,32
    800041fc:	00008067          	ret

0000000080004200 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80004200:	ff010113          	addi	sp,sp,-16
    80004204:	00813423          	sd	s0,8(sp)
    80004208:	01010413          	addi	s0,sp,16
    8000420c:	00813403          	ld	s0,8(sp)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80004218:	ff010113          	addi	sp,sp,-16
    8000421c:	00813423          	sd	s0,8(sp)
    80004220:	01010413          	addi	s0,sp,16
    80004224:	00813403          	ld	s0,8(sp)
    80004228:	01010113          	addi	sp,sp,16
    8000422c:	00008067          	ret

0000000080004230 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00113423          	sd	ra,8(sp)
    80004238:	00813023          	sd	s0,0(sp)
    8000423c:	01010413          	addi	s0,sp,16
    80004240:	00007797          	auipc	a5,0x7
    80004244:	6d878793          	addi	a5,a5,1752 # 8000b918 <_ZTV14PeriodicThread+0x10>
    80004248:	00f53023          	sd	a5,0(a0)
    8000424c:	00000097          	auipc	ra,0x0
    80004250:	b9c080e7          	jalr	-1124(ra) # 80003de8 <_ZN6ThreadD1Ev>
    80004254:	00813083          	ld	ra,8(sp)
    80004258:	00013403          	ld	s0,0(sp)
    8000425c:	01010113          	addi	sp,sp,16
    80004260:	00008067          	ret

0000000080004264 <_ZN14PeriodicThreadD0Ev>:
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00113c23          	sd	ra,24(sp)
    8000426c:	00813823          	sd	s0,16(sp)
    80004270:	00913423          	sd	s1,8(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	00050493          	mv	s1,a0
    8000427c:	00007797          	auipc	a5,0x7
    80004280:	69c78793          	addi	a5,a5,1692 # 8000b918 <_ZTV14PeriodicThread+0x10>
    80004284:	00f53023          	sd	a5,0(a0)
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	b60080e7          	jalr	-1184(ra) # 80003de8 <_ZN6ThreadD1Ev>
    80004290:	00048513          	mv	a0,s1
    80004294:	00000097          	auipc	ra,0x0
    80004298:	bfc080e7          	jalr	-1028(ra) # 80003e90 <_ZdlPv>
    8000429c:	01813083          	ld	ra,24(sp)
    800042a0:	01013403          	ld	s0,16(sp)
    800042a4:	00813483          	ld	s1,8(sp)
    800042a8:	02010113          	addi	sp,sp,32
    800042ac:	00008067          	ret

00000000800042b0 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    800042b0:	ff010113          	addi	sp,sp,-16
    800042b4:	00113423          	sd	ra,8(sp)
    800042b8:	00813023          	sd	s0,0(sp)
    800042bc:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	fd4080e7          	jalr	-44(ra) # 80002294 <_Z9sem_closeP4_sem>
}
    800042c8:	00813083          	ld	ra,8(sp)
    800042cc:	00013403          	ld	s0,0(sp)
    800042d0:	01010113          	addi	sp,sp,16
    800042d4:	00008067          	ret

00000000800042d8 <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    800042d8:	ff010113          	addi	sp,sp,-16
    800042dc:	00113423          	sd	ra,8(sp)
    800042e0:	00813023          	sd	s0,0(sp)
    800042e4:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800042e8:	00007797          	auipc	a5,0x7
    800042ec:	6d07b783          	ld	a5,1744(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800042f0:	10579073          	csrw	stvec,a5
    PCB::initialize();
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	388080e7          	jalr	904(ra) # 8000267c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    800042fc:	fffff097          	auipc	ra,0xfffff
    80004300:	fe8080e7          	jalr	-24(ra) # 800032e4 <_ZN8KConsole10initializeEv>
}
    80004304:	00813083          	ld	ra,8(sp)
    80004308:	00013403          	ld	s0,0(sp)
    8000430c:	01010113          	addi	sp,sp,16
    80004310:	00008067          	ret

0000000080004314 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80004314:	ff010113          	addi	sp,sp,-16
    80004318:	00813423          	sd	s0,8(sp)
    8000431c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004320:	00200793          	li	a5,2
    80004324:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80004328:	00813403          	ld	s0,8(sp)
    8000432c:	01010113          	addi	sp,sp,16
    80004330:	00008067          	ret

0000000080004334 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80004334:	ff010113          	addi	sp,sp,-16
    80004338:	00813423          	sd	s0,8(sp)
    8000433c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004340:	00200793          	li	a5,2
    80004344:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80004348:	00813403          	ld	s0,8(sp)
    8000434c:	01010113          	addi	sp,sp,16
    80004350:	00008067          	ret

0000000080004354 <_ZN5Riscv9endSystemEv>:
{
    80004354:	ff010113          	addi	sp,sp,-16
    80004358:	00113423          	sd	ra,8(sp)
    8000435c:	00813023          	sd	s0,0(sp)
    80004360:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80004364:	00000097          	auipc	ra,0x0
    80004368:	fd0080e7          	jalr	-48(ra) # 80004334 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    8000436c:	00100793          	li	a5,1
    80004370:	0000b717          	auipc	a4,0xb
    80004374:	76f70c23          	sb	a5,1912(a4) # 8000fae8 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	6c0080e7          	jalr	1728(ra) # 80003a38 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80004380:	fe051ce3          	bnez	a0,80004378 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80004384:	00007797          	auipc	a5,0x7
    80004388:	66c7b783          	ld	a5,1644(a5) # 8000b9f0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000438c:	0007b503          	ld	a0,0(a5)
    80004390:	fffff097          	auipc	ra,0xfffff
    80004394:	654080e7          	jalr	1620(ra) # 800039e4 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80004398:	00007797          	auipc	a5,0x7
    8000439c:	6287b783          	ld	a5,1576(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800043a0:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    800043a4:	00000097          	auipc	ra,0x0
    800043a8:	f70080e7          	jalr	-144(ra) # 80004314 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    800043ac:	00007797          	auipc	a5,0x7
    800043b0:	6447b783          	ld	a5,1604(a5) # 8000b9f0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800043b4:	0007b503          	ld	a0,0(a5)
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	3e4080e7          	jalr	996(ra) # 8000279c <_ZN3PCB10isFinishedEv>
    800043c0:	00051863          	bnez	a0,800043d0 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	e50080e7          	jalr	-432(ra) # 80002214 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    800043cc:	fe1ff06f          	j	800043ac <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	f64080e7          	jalr	-156(ra) # 80004334 <_ZN5Riscv17disableInterruptsEv>
}
    800043d8:	00813083          	ld	ra,8(sp)
    800043dc:	00013403          	ld	s0,0(sp)
    800043e0:	01010113          	addi	sp,sp,16
    800043e4:	00008067          	ret

00000000800043e8 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    800043e8:	ff010113          	addi	sp,sp,-16
    800043ec:	00813423          	sd	s0,8(sp)
    800043f0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800043f4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800043f8:	10200073          	sret
}
    800043fc:	00813403          	ld	s0,8(sp)
    80004400:	01010113          	addi	sp,sp,16
    80004404:	00008067          	ret

0000000080004408 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80004408:	0000b797          	auipc	a5,0xb
    8000440c:	6e17c783          	lbu	a5,1761(a5) # 8000fae9 <_ZN5Riscv16kernelMainCalledE>
    80004410:	00078463          	beqz	a5,80004418 <_ZN5Riscv10kernelMainEv+0x10>
    80004414:	00008067          	ret
{
    80004418:	ff010113          	addi	sp,sp,-16
    8000441c:	00113423          	sd	ra,8(sp)
    80004420:	00813023          	sd	s0,0(sp)
    80004424:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004428:	00100793          	li	a5,1
    8000442c:	0000b717          	auipc	a4,0xb
    80004430:	6af70ea3          	sb	a5,1725(a4) # 8000fae9 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80004434:	00000097          	auipc	ra,0x0
    80004438:	ea4080e7          	jalr	-348(ra) # 800042d8 <_ZN5Riscv10initSystemEv>
    slabCacheCreateTest2();
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	994080e7          	jalr	-1644(ra) # 80004dd0 <_Z20slabCacheCreateTest2v>
    {
        thread_dispatch();
    }*/

    //printString("End...\n");
    endSystem();
    80004444:	00000097          	auipc	ra,0x0
    80004448:	f10080e7          	jalr	-240(ra) # 80004354 <_ZN5Riscv9endSystemEv>
}
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    8000445c:	ff010113          	addi	sp,sp,-16
    80004460:	00113423          	sd	ra,8(sp)
    80004464:	00813023          	sd	s0,0(sp)
    80004468:	01010413          	addi	s0,sp,16
    userMain();
    8000446c:	00002097          	auipc	ra,0x2
    80004470:	ac4080e7          	jalr	-1340(ra) # 80005f30 <_Z8userMainv>
}
    80004474:	00813083          	ld	ra,8(sp)
    80004478:	00013403          	ld	s0,0(sp)
    8000447c:	01010113          	addi	sp,sp,16
    80004480:	00008067          	ret

0000000080004484 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004484:	ff010113          	addi	sp,sp,-16
    80004488:	00813423          	sd	s0,8(sp)
    8000448c:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004490:	00200793          	li	a5,2
    80004494:	1047b073          	csrc	sie,a5
}
    80004498:	00813403          	ld	s0,8(sp)
    8000449c:	01010113          	addi	sp,sp,16
    800044a0:	00008067          	ret

00000000800044a4 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    800044a4:	ff010113          	addi	sp,sp,-16
    800044a8:	00813423          	sd	s0,8(sp)
    800044ac:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800044b0:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800044b4:	00007717          	auipc	a4,0x7
    800044b8:	54c73703          	ld	a4,1356(a4) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x68>
    800044bc:	00073703          	ld	a4,0(a4)
    800044c0:	01073703          	ld	a4,16(a4)
    800044c4:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800044c8:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800044cc:	00078593          	mv	a1,a5
}
    800044d0:	00813403          	ld	s0,8(sp)
    800044d4:	01010113          	addi	sp,sp,16
    800044d8:	00008067          	ret

00000000800044dc <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00813423          	sd	s0,8(sp)
    800044e4:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    800044e8:	00007797          	auipc	a5,0x7
    800044ec:	5187b783          	ld	a5,1304(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x68>
    800044f0:	0007b783          	ld	a5,0(a5)
    800044f4:	0007c783          	lbu	a5,0(a5)
    800044f8:	00078c63          	beqz	a5,80004510 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800044fc:	10000793          	li	a5,256
    80004500:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80004504:	00813403          	ld	s0,8(sp)
    80004508:	01010113          	addi	sp,sp,16
    8000450c:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004510:	10000793          	li	a5,256
    80004514:	1007b073          	csrc	sstatus,a5
    80004518:	fedff06f          	j	80004504 <_ZN5Riscv14changePrivModeEv+0x28>

000000008000451c <_ZN5Riscv20handleSupervisorTrapEv>:
{
    8000451c:	f9010113          	addi	sp,sp,-112
    80004520:	06113423          	sd	ra,104(sp)
    80004524:	06813023          	sd	s0,96(sp)
    80004528:	04913c23          	sd	s1,88(sp)
    8000452c:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80004530:	00070713          	mv	a4,a4
    80004534:	00007797          	auipc	a5,0x7
    80004538:	4e47b783          	ld	a5,1252(a5) # 8000ba18 <_GLOBAL_OFFSET_TABLE_+0x80>
    8000453c:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80004540:	00007797          	auipc	a5,0x7
    80004544:	4c07b783          	ld	a5,1216(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004548:	0007b783          	ld	a5,0(a5)
    8000454c:	14002773          	csrr	a4,sscratch
    80004550:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004554:	142027f3          	csrr	a5,scause
    80004558:	faf43c23          	sd	a5,-72(s0)
    return scause;
    8000455c:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80004560:	00900713          	li	a4,9
    80004564:	02f76e63          	bltu	a4,a5,800045a0 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80004568:	00800713          	li	a4,8
    8000456c:	12e7f463          	bgeu	a5,a4,80004694 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80004570:	00500713          	li	a4,5
    80004574:	10e78a63          	beq	a5,a4,80004688 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    80004578:	00700713          	li	a4,7
    8000457c:	00e79863          	bne	a5,a4,8000458c <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	240080e7          	jalr	576(ra) # 800027c0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004588:	0dc0006f          	j	80004664 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    8000458c:	00200713          	li	a4,2
    80004590:	0ce79a63          	bne	a5,a4,80004664 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004594:	ffffe097          	auipc	ra,0xffffe
    80004598:	22c080e7          	jalr	556(ra) # 800027c0 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000459c:	0c80006f          	j	80004664 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    800045a0:	fff00713          	li	a4,-1
    800045a4:	03f71713          	slli	a4,a4,0x3f
    800045a8:	00170713          	addi	a4,a4,1
    800045ac:	02e78863          	beq	a5,a4,800045dc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    800045b0:	fff00713          	li	a4,-1
    800045b4:	03f71713          	slli	a4,a4,0x3f
    800045b8:	00970713          	addi	a4,a4,9
    800045bc:	0ae79463          	bne	a5,a4,80004664 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    800045c0:	fffff097          	auipc	ra,0xfffff
    800045c4:	e3c080e7          	jalr	-452(ra) # 800033fc <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    800045c8:	00002097          	auipc	ra,0x2
    800045cc:	50c080e7          	jalr	1292(ra) # 80006ad4 <plic_claim>
    800045d0:	00002097          	auipc	ra,0x2
    800045d4:	53c080e7          	jalr	1340(ra) # 80006b0c <plic_complete>
            break;
    800045d8:	08c0006f          	j	80004664 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800045dc:	141027f3          	csrr	a5,sepc
    800045e0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800045e4:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800045e8:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800045ec:	100027f3          	csrr	a5,sstatus
    800045f0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800045f4:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800045f8:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800045fc:	00200793          	li	a5,2
    80004600:	1447b073          	csrc	sip,a5
            totalTime++;
    80004604:	0000b717          	auipc	a4,0xb
    80004608:	4e470713          	addi	a4,a4,1252 # 8000fae8 <_ZN5Riscv12finishSystemE>
    8000460c:	00873783          	ld	a5,8(a4)
    80004610:	00178793          	addi	a5,a5,1
    80004614:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80004618:	00007497          	auipc	s1,0x7
    8000461c:	3b84b483          	ld	s1,952(s1) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80004620:	0004b783          	ld	a5,0(s1)
    80004624:	00178793          	addi	a5,a5,1
    80004628:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    8000462c:	fffff097          	auipc	ra,0xfffff
    80004630:	2a8080e7          	jalr	680(ra) # 800038d4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80004634:	00007797          	auipc	a5,0x7
    80004638:	3cc7b783          	ld	a5,972(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000463c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004640:	0187b783          	ld	a5,24(a5)
    80004644:	0004b703          	ld	a4,0(s1)
    80004648:	02f77863          	bgeu	a4,a5,80004678 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    8000464c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004650:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004654:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004658:	14179073          	csrw	sepc,a5
            changePrivMode();
    8000465c:	00000097          	auipc	ra,0x0
    80004660:	e80080e7          	jalr	-384(ra) # 800044dc <_ZN5Riscv14changePrivModeEv>
}
    80004664:	06813083          	ld	ra,104(sp)
    80004668:	06013403          	ld	s0,96(sp)
    8000466c:	05813483          	ld	s1,88(sp)
    80004670:	07010113          	addi	sp,sp,112
    80004674:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80004678:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	ef8080e7          	jalr	-264(ra) # 80002574 <_ZN3PCB8dispatchEv>
    80004684:	fc9ff06f          	j	8000464c <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    80004688:	ffffe097          	auipc	ra,0xffffe
    8000468c:	138080e7          	jalr	312(ra) # 800027c0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004690:	fd5ff06f          	j	80004664 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004694:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004698:	14102773          	csrr	a4,sepc
    8000469c:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    800046a0:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    800046a4:	00470713          	addi	a4,a4,4
    800046a8:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800046ac:	10002773          	csrr	a4,sstatus
    800046b0:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    800046b4:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800046b8:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    800046bc:	04300713          	li	a4,67
    800046c0:	02f76463          	bltu	a4,a5,800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    800046c4:	00279793          	slli	a5,a5,0x2
    800046c8:	00005717          	auipc	a4,0x5
    800046cc:	d4c70713          	addi	a4,a4,-692 # 80009414 <CONSOLE_STATUS+0x404>
    800046d0:	00e787b3          	add	a5,a5,a4
    800046d4:	0007a783          	lw	a5,0(a5)
    800046d8:	00e787b3          	add	a5,a5,a4
    800046dc:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    800046e0:	00000097          	auipc	ra,0x0
    800046e4:	564080e7          	jalr	1380(ra) # 80004c44 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800046e8:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800046ec:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800046f0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800046f4:	14179073          	csrw	sepc,a5
            changePrivMode();
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	de4080e7          	jalr	-540(ra) # 800044dc <_ZN5Riscv14changePrivModeEv>
}
    80004700:	f65ff06f          	j	80004664 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    80004704:	00000097          	auipc	ra,0x0
    80004708:	5a4080e7          	jalr	1444(ra) # 80004ca8 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    8000470c:	fddff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    80004710:	ffffe097          	auipc	ra,0xffffe
    80004714:	274080e7          	jalr	628(ra) # 80002984 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004718:	fd1ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	184080e7          	jalr	388(ra) # 800028a0 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004724:	fc5ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    80004728:	ffffe097          	auipc	ra,0xffffe
    8000472c:	218080e7          	jalr	536(ra) # 80002940 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004730:	fb9ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    80004734:	ffffe097          	auipc	ra,0xffffe
    80004738:	0d8080e7          	jalr	216(ra) # 8000280c <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    8000473c:	fadff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    80004740:	ffffe097          	auipc	ra,0xffffe
    80004744:	080080e7          	jalr	128(ra) # 800027c0 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004748:	fa1ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	0f0080e7          	jalr	240(ra) # 8000283c <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004754:	f95ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    80004758:	ffffe097          	auipc	ra,0xffffe
    8000475c:	2c0080e7          	jalr	704(ra) # 80002a18 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80004760:	f89ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    80004764:	00001097          	auipc	ra,0x1
    80004768:	994080e7          	jalr	-1644(ra) # 800050f8 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    8000476c:	f7dff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80004770:	00001097          	auipc	ra,0x1
    80004774:	a28080e7          	jalr	-1496(ra) # 80005198 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004778:	f71ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    8000477c:	00001097          	auipc	ra,0x1
    80004780:	a70080e7          	jalr	-1424(ra) # 800051ec <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004784:	f65ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	aa8080e7          	jalr	-1368(ra) # 80005230 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004790:	f59ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80004794:	fffff097          	auipc	ra,0xfffff
    80004798:	e6c080e7          	jalr	-404(ra) # 80003600 <_ZN8KConsole11getcHandlerEv>
                    break;
    8000479c:	f4dff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    800047a0:	fffff097          	auipc	ra,0xfffff
    800047a4:	e30080e7          	jalr	-464(ra) # 800035d0 <_ZN8KConsole11putcHandlerEv>
                    break;
    800047a8:	f41ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    800047ac:	fffff097          	auipc	ra,0xfffff
    800047b0:	fb0080e7          	jalr	-80(ra) # 8000375c <_ZN8KConsole14getCharHandlerEv>
                    break;
    800047b4:	f35ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

00000000800047b8 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800047b8:	ff010113          	addi	sp,sp,-16
    800047bc:	00813423          	sd	s0,8(sp)
    800047c0:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800047c4:	0000b717          	auipc	a4,0xb
    800047c8:	33472703          	lw	a4,820(a4) # 8000faf8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800047cc:	00100793          	li	a5,1
    800047d0:	04f70663          	beq	a4,a5,8000481c <_ZN15MemoryAllocator10initMemoryEv+0x64>
        return;
    memoryInitiliaized = 1;
    800047d4:	0000b797          	auipc	a5,0xb
    800047d8:	32478793          	addi	a5,a5,804 # 8000faf8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800047dc:	00100713          	li	a4,1
    800047e0:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800047e4:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800047e8:	00007717          	auipc	a4,0x7
    800047ec:	1c873703          	ld	a4,456(a4) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800047f0:	00073703          	ld	a4,0(a4)
    800047f4:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800047f8:	00073423          	sd	zero,8(a4)
    //TODO
    //move HEAP START
    //currently moved by 100 blocks
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - 100*4096 + 1 - sizeof(BlockHeader));
    800047fc:	00007797          	auipc	a5,0x7
    80004800:	20c7b783          	ld	a5,524(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004804:	0007b783          	ld	a5,0(a5)
    80004808:	40e787b3          	sub	a5,a5,a4
    8000480c:	fff9c6b7          	lui	a3,0xfff9c
    80004810:	ff168693          	addi	a3,a3,-15 # fffffffffff9bff1 <end+0xffffffff7ff8b271>
    80004814:	00d787b3          	add	a5,a5,a3
    80004818:	00f73023          	sd	a5,0(a4)
}
    8000481c:	00813403          	ld	s0,8(sp)
    80004820:	01010113          	addi	sp,sp,16
    80004824:	00008067          	ret

0000000080004828 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004828:	fd010113          	addi	sp,sp,-48
    8000482c:	02113423          	sd	ra,40(sp)
    80004830:	02813023          	sd	s0,32(sp)
    80004834:	00913c23          	sd	s1,24(sp)
    80004838:	01213823          	sd	s2,16(sp)
    8000483c:	01313423          	sd	s3,8(sp)
    80004840:	03010413          	addi	s0,sp,48
    80004844:	00050493          	mv	s1,a0
    80004848:	00058993          	mv	s3,a1
    8000484c:	00060913          	mv	s2,a2
    initMemory();
    80004850:	00000097          	auipc	ra,0x0
    80004854:	f68080e7          	jalr	-152(ra) # 800047b8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004858:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    8000485c:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    80004860:	0000b797          	auipc	a5,0xb
    80004864:	2a07b783          	ld	a5,672(a5) # 8000fb00 <_ZN15MemoryAllocator13headAllocatedE>
    80004868:	02078e63          	beqz	a5,800048a4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    8000486c:	00007717          	auipc	a4,0x7
    80004870:	19c73703          	ld	a4,412(a4) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004874:	00073703          	ld	a4,0(a4)
    80004878:	03276c63          	bltu	a4,s2,800048b0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    8000487c:	00893783          	ld	a5,8(s2)
    80004880:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    80004884:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004888:	02813083          	ld	ra,40(sp)
    8000488c:	02013403          	ld	s0,32(sp)
    80004890:	01813483          	ld	s1,24(sp)
    80004894:	01013903          	ld	s2,16(sp)
    80004898:	00813983          	ld	s3,8(sp)
    8000489c:	03010113          	addi	sp,sp,48
    800048a0:	00008067          	ret
        headAllocated = newAllocated;
    800048a4:	0000b797          	auipc	a5,0xb
    800048a8:	2497be23          	sd	s1,604(a5) # 8000fb00 <_ZN15MemoryAllocator13headAllocatedE>
    800048ac:	fddff06f          	j	80004888 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    800048b0:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    800048b4:	0000b797          	auipc	a5,0xb
    800048b8:	2497b623          	sd	s1,588(a5) # 8000fb00 <_ZN15MemoryAllocator13headAllocatedE>
}
    800048bc:	fcdff06f          	j	80004888 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

00000000800048c0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800048c0:	fe010113          	addi	sp,sp,-32
    800048c4:	00113c23          	sd	ra,24(sp)
    800048c8:	00813823          	sd	s0,16(sp)
    800048cc:	00913423          	sd	s1,8(sp)
    800048d0:	01213023          	sd	s2,0(sp)
    800048d4:	02010413          	addi	s0,sp,32
    800048d8:	00050493          	mv	s1,a0
    800048dc:	00058913          	mv	s2,a1
    initMemory();
    800048e0:	00000097          	auipc	ra,0x0
    800048e4:	ed8080e7          	jalr	-296(ra) # 800047b8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800048e8:	0000b797          	auipc	a5,0xb
    800048ec:	2187b783          	ld	a5,536(a5) # 8000fb00 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800048f0:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800048f4:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800048f8:	00000713          	li	a4,0
    while(curr != 0)
    800048fc:	00078c63          	beqz	a5,80004914 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004900:	00f4e863          	bltu	s1,a5,80004910 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004904:	00078713          	mv	a4,a5
        curr = curr->next;
    80004908:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000490c:	ff1ff06f          	j	800048fc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80004910:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004914:	02070063          	beqz	a4,80004934 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004918:	00973423          	sd	s1,8(a4)
}
    8000491c:	01813083          	ld	ra,24(sp)
    80004920:	01013403          	ld	s0,16(sp)
    80004924:	00813483          	ld	s1,8(sp)
    80004928:	00013903          	ld	s2,0(sp)
    8000492c:	02010113          	addi	sp,sp,32
    80004930:	00008067          	ret
        headAllocated = newAllocated;
    80004934:	0000b797          	auipc	a5,0xb
    80004938:	1c97b623          	sd	s1,460(a5) # 8000fb00 <_ZN15MemoryAllocator13headAllocatedE>
    8000493c:	fe1ff06f          	j	8000491c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004940 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004940:	fe010113          	addi	sp,sp,-32
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00913423          	sd	s1,8(sp)
    80004950:	01213023          	sd	s2,0(sp)
    80004954:	02010413          	addi	s0,sp,32
    80004958:	00050913          	mv	s2,a0
    initMemory();
    8000495c:	00000097          	auipc	ra,0x0
    80004960:	e5c080e7          	jalr	-420(ra) # 800047b8 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004964:	0000b497          	auipc	s1,0xb
    80004968:	1a44b483          	ld	s1,420(s1) # 8000fb08 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    8000496c:	00000713          	li	a4,0
    while(curr != 0)
    80004970:	0c048063          	beqz	s1,80004a30 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    80004974:	0004b783          	ld	a5,0(s1)
    80004978:	0127f863          	bgeu	a5,s2,80004988 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    8000497c:	00048713          	mv	a4,s1
        curr = curr->next;
    80004980:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004984:	fedff06f          	j	80004970 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004988:	01090693          	addi	a3,s2,16
    8000498c:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004990:	01078613          	addi	a2,a5,16
    80004994:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004998:	00007597          	auipc	a1,0x7
    8000499c:	0705b583          	ld	a1,112(a1) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x70>
    800049a0:	0005b583          	ld	a1,0(a1)
    800049a4:	06d5e063          	bltu	a1,a3,80004a04 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800049a8:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    800049ac:	01000513          	li	a0,16
    800049b0:	02b57663          	bgeu	a0,a1,800049dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800049b4:	0084b783          	ld	a5,8(s1)
    800049b8:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800049bc:	ff058593          	addi	a1,a1,-16
    800049c0:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    800049c4:	00070663          	beqz	a4,800049d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800049c8:	00d73423          	sd	a3,8(a4)
    800049cc:	0400006f          	j	80004a0c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    800049d0:	0000b797          	auipc	a5,0xb
    800049d4:	12d7bc23          	sd	a3,312(a5) # 8000fb08 <_ZN15MemoryAllocator8headFreeE>
    800049d8:	0340006f          	j	80004a0c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    800049dc:	00070a63          	beqz	a4,800049f0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    800049e0:	0084b683          	ld	a3,8(s1)
    800049e4:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    800049e8:	00078913          	mv	s2,a5
    800049ec:	0200006f          	j	80004a0c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    800049f0:	0084b703          	ld	a4,8(s1)
    800049f4:	0000b697          	auipc	a3,0xb
    800049f8:	10e6ba23          	sd	a4,276(a3) # 8000fb08 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    800049fc:	00078913          	mv	s2,a5
    80004a00:	00c0006f          	j	80004a0c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004a04:	02070063          	beqz	a4,80004a24 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    80004a08:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004a0c:	00090593          	mv	a1,s2
    80004a10:	00048513          	mv	a0,s1
    80004a14:	00000097          	auipc	ra,0x0
    80004a18:	e14080e7          	jalr	-492(ra) # 80004828 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004a1c:	01048513          	addi	a0,s1,16
            break;
    80004a20:	0140006f          	j	80004a34 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80004a24:	0000b797          	auipc	a5,0xb
    80004a28:	0e07b223          	sd	zero,228(a5) # 8000fb08 <_ZN15MemoryAllocator8headFreeE>
    80004a2c:	fe1ff06f          	j	80004a0c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004a30:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004a34:	01813083          	ld	ra,24(sp)
    80004a38:	01013403          	ld	s0,16(sp)
    80004a3c:	00813483          	ld	s1,8(sp)
    80004a40:	00013903          	ld	s2,0(sp)
    80004a44:	02010113          	addi	sp,sp,32
    80004a48:	00008067          	ret

0000000080004a4c <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004a4c:	ff010113          	addi	sp,sp,-16
    80004a50:	00113423          	sd	ra,8(sp)
    80004a54:	00813023          	sd	s0,0(sp)
    80004a58:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004a5c:	00000097          	auipc	ra,0x0
    80004a60:	ee4080e7          	jalr	-284(ra) # 80004940 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004a64:	00813083          	ld	ra,8(sp)
    80004a68:	00013403          	ld	s0,0(sp)
    80004a6c:	01010113          	addi	sp,sp,16
    80004a70:	00008067          	ret

0000000080004a74 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004a74:	fe010113          	addi	sp,sp,-32
    80004a78:	00113c23          	sd	ra,24(sp)
    80004a7c:	00813823          	sd	s0,16(sp)
    80004a80:	00913423          	sd	s1,8(sp)
    80004a84:	01213023          	sd	s2,0(sp)
    80004a88:	02010413          	addi	s0,sp,32
    80004a8c:	00050493          	mv	s1,a0
    80004a90:	00058913          	mv	s2,a1
    initMemory();
    80004a94:	00000097          	auipc	ra,0x0
    80004a98:	d24080e7          	jalr	-732(ra) # 800047b8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004a9c:	0000b797          	auipc	a5,0xb
    80004aa0:	06c7b783          	ld	a5,108(a5) # 8000fb08 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004aa4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80004aa8:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80004aac:	00000713          	li	a4,0
    while(curr != 0)
    80004ab0:	00078c63          	beqz	a5,80004ac8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004ab4:	00f4e863          	bltu	s1,a5,80004ac4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004ab8:	00078713          	mv	a4,a5
        curr = curr->next;
    80004abc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004ac0:	ff1ff06f          	j	80004ab0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80004ac4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004ac8:	04070663          	beqz	a4,80004b14 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004acc:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004ad0:	0084b783          	ld	a5,8(s1)
    80004ad4:	00078a63          	beqz	a5,80004ae8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004ad8:	0004b603          	ld	a2,0(s1)
    80004adc:	01060693          	addi	a3,a2,16
    80004ae0:	00d486b3          	add	a3,s1,a3
    80004ae4:	02d78e63          	beq	a5,a3,80004b20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004ae8:	00070a63          	beqz	a4,80004afc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80004aec:	00073683          	ld	a3,0(a4)
    80004af0:	01068793          	addi	a5,a3,16
    80004af4:	00f707b3          	add	a5,a4,a5
    80004af8:	04978263          	beq	a5,s1,80004b3c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004afc:	01813083          	ld	ra,24(sp)
    80004b00:	01013403          	ld	s0,16(sp)
    80004b04:	00813483          	ld	s1,8(sp)
    80004b08:	00013903          	ld	s2,0(sp)
    80004b0c:	02010113          	addi	sp,sp,32
    80004b10:	00008067          	ret
        headFree = newSegment;
    80004b14:	0000b797          	auipc	a5,0xb
    80004b18:	fe97ba23          	sd	s1,-12(a5) # 8000fb08 <_ZN15MemoryAllocator8headFreeE>
    80004b1c:	fb5ff06f          	j	80004ad0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004b20:	0007b683          	ld	a3,0(a5)
    80004b24:	00d60633          	add	a2,a2,a3
    80004b28:	01060613          	addi	a2,a2,16
    80004b2c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004b30:	0087b783          	ld	a5,8(a5)
    80004b34:	00f4b423          	sd	a5,8(s1)
    80004b38:	fb1ff06f          	j	80004ae8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004b3c:	0004b783          	ld	a5,0(s1)
    80004b40:	00f686b3          	add	a3,a3,a5
    80004b44:	01068693          	addi	a3,a3,16
    80004b48:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004b4c:	0084b783          	ld	a5,8(s1)
    80004b50:	00f73423          	sd	a5,8(a4)
}
    80004b54:	fa9ff06f          	j	80004afc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004b58 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004b58:	fe010113          	addi	sp,sp,-32
    80004b5c:	00113c23          	sd	ra,24(sp)
    80004b60:	00813823          	sd	s0,16(sp)
    80004b64:	00913423          	sd	s1,8(sp)
    80004b68:	01213023          	sd	s2,0(sp)
    80004b6c:	02010413          	addi	s0,sp,32
    80004b70:	00050913          	mv	s2,a0
    initMemory();
    80004b74:	00000097          	auipc	ra,0x0
    80004b78:	c44080e7          	jalr	-956(ra) # 800047b8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004b7c:	0000b497          	auipc	s1,0xb
    80004b80:	f844b483          	ld	s1,-124(s1) # 8000fb00 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004b84:	00000713          	li	a4,0
    while(curr != 0)
    80004b88:	02048a63          	beqz	s1,80004bbc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004b8c:	01048793          	addi	a5,s1,16
    80004b90:	01278863          	beq	a5,s2,80004ba0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004b94:	00048713          	mv	a4,s1
        curr = curr->next;
    80004b98:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004b9c:	fedff06f          	j	80004b88 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80004ba0:	02070e63          	beqz	a4,80004bdc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80004ba4:	0084b783          	ld	a5,8(s1)
    80004ba8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004bac:	0004b583          	ld	a1,0(s1)
    80004bb0:	00048513          	mv	a0,s1
    80004bb4:	00000097          	auipc	ra,0x0
    80004bb8:	ec0080e7          	jalr	-320(ra) # 80004a74 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004bbc:	02048863          	beqz	s1,80004bec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004bc0:	00000513          	li	a0,0
    else
        return 1;
}
    80004bc4:	01813083          	ld	ra,24(sp)
    80004bc8:	01013403          	ld	s0,16(sp)
    80004bcc:	00813483          	ld	s1,8(sp)
    80004bd0:	00013903          	ld	s2,0(sp)
    80004bd4:	02010113          	addi	sp,sp,32
    80004bd8:	00008067          	ret
                headAllocated = curr->next;
    80004bdc:	0084b783          	ld	a5,8(s1)
    80004be0:	0000b717          	auipc	a4,0xb
    80004be4:	f2f73023          	sd	a5,-224(a4) # 8000fb00 <_ZN15MemoryAllocator13headAllocatedE>
    80004be8:	fc5ff06f          	j	80004bac <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004bec:	00100513          	li	a0,1
    80004bf0:	fd5ff06f          	j	80004bc4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004bf4 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004bf4:	ff010113          	addi	sp,sp,-16
    80004bf8:	00113423          	sd	ra,8(sp)
    80004bfc:	00813023          	sd	s0,0(sp)
    80004c00:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004c04:	00000097          	auipc	ra,0x0
    80004c08:	f54080e7          	jalr	-172(ra) # 80004b58 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004c0c:	00813083          	ld	ra,8(sp)
    80004c10:	00013403          	ld	s0,0(sp)
    80004c14:	01010113          	addi	sp,sp,16
    80004c18:	00008067          	ret

0000000080004c1c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004c1c:	ff010113          	addi	sp,sp,-16
    80004c20:	00113423          	sd	ra,8(sp)
    80004c24:	00813023          	sd	s0,0(sp)
    80004c28:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	e20080e7          	jalr	-480(ra) # 80004a4c <_ZN15MemoryAllocator9mem_allocEm>
}
    80004c34:	00813083          	ld	ra,8(sp)
    80004c38:	00013403          	ld	s0,0(sp)
    80004c3c:	01010113          	addi	sp,sp,16
    80004c40:	00008067          	ret

0000000080004c44 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004c44:	ff010113          	addi	sp,sp,-16
    80004c48:	00113423          	sd	ra,8(sp)
    80004c4c:	00813023          	sd	s0,0(sp)
    80004c50:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004c54:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004c58:	00651513          	slli	a0,a0,0x6
    80004c5c:	00000097          	auipc	ra,0x0
    80004c60:	fc0080e7          	jalr	-64(ra) # 80004c1c <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004c64:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004c68:	00000097          	auipc	ra,0x0
    80004c6c:	83c080e7          	jalr	-1988(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004c70:	00813083          	ld	ra,8(sp)
    80004c74:	00013403          	ld	s0,0(sp)
    80004c78:	01010113          	addi	sp,sp,16
    80004c7c:	00008067          	ret

0000000080004c80 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004c80:	ff010113          	addi	sp,sp,-16
    80004c84:	00113423          	sd	ra,8(sp)
    80004c88:	00813023          	sd	s0,0(sp)
    80004c8c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	f64080e7          	jalr	-156(ra) # 80004bf4 <_ZN15MemoryAllocator8mem_freeEPv>
    80004c98:	00813083          	ld	ra,8(sp)
    80004c9c:	00013403          	ld	s0,0(sp)
    80004ca0:	01010113          	addi	sp,sp,16
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004ca8:	ff010113          	addi	sp,sp,-16
    80004cac:	00113423          	sd	ra,8(sp)
    80004cb0:	00813023          	sd	s0,0(sp)
    80004cb4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004cb8:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004cbc:	00000097          	auipc	ra,0x0
    80004cc0:	fc4080e7          	jalr	-60(ra) # 80004c80 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004cc4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004cc8:	fffff097          	auipc	ra,0xfffff
    80004ccc:	7dc080e7          	jalr	2012(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004cd0:	00813083          	ld	ra,8(sp)
    80004cd4:	00013403          	ld	s0,0(sp)
    80004cd8:	01010113          	addi	sp,sp,16
    80004cdc:	00008067          	ret

0000000080004ce0 <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"

void slabInitTest()
{
    80004ce0:	ff010113          	addi	sp,sp,-16
    80004ce4:	00113423          	sd	ra,8(sp)
    80004ce8:	00813023          	sd	s0,0(sp)
    80004cec:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004cf0:	00f00593          	li	a1,15
    80004cf4:	00007797          	auipc	a5,0x7
    80004cf8:	cbc7b783          	ld	a5,-836(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004cfc:	0007b503          	ld	a0,0(a5)
    80004d00:	ffffd097          	auipc	ra,0xffffd
    80004d04:	d44080e7          	jalr	-700(ra) # 80001a44 <_Z9kmem_initPvi>
}
    80004d08:	00813083          	ld	ra,8(sp)
    80004d0c:	00013403          	ld	s0,0(sp)
    80004d10:	01010113          	addi	sp,sp,16
    80004d14:	00008067          	ret

0000000080004d18 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004d18:	fe010113          	addi	sp,sp,-32
    80004d1c:	00113c23          	sd	ra,24(sp)
    80004d20:	00813823          	sd	s0,16(sp)
    80004d24:	00913423          	sd	s1,8(sp)
    80004d28:	01213023          	sd	s2,0(sp)
    80004d2c:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004d30:	00f00593          	li	a1,15
    80004d34:	00007797          	auipc	a5,0x7
    80004d38:	c7c7b783          	ld	a5,-900(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004d3c:	0007b503          	ld	a0,0(a5)
    80004d40:	ffffd097          	auipc	ra,0xffffd
    80004d44:	d04080e7          	jalr	-764(ra) # 80001a44 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004d48:	00000693          	li	a3,0
    80004d4c:	00000613          	li	a2,0
    80004d50:	00a00593          	li	a1,10
    80004d54:	00004517          	auipc	a0,0x4
    80004d58:	7d450513          	addi	a0,a0,2004 # 80009528 <CONSOLE_STATUS+0x518>
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	e04080e7          	jalr	-508(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004d64:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004d68:	00000693          	li	a3,0
    80004d6c:	00000613          	li	a2,0
    80004d70:	00a00593          	li	a1,10
    80004d74:	00004517          	auipc	a0,0x4
    80004d78:	7c450513          	addi	a0,a0,1988 # 80009538 <CONSOLE_STATUS+0x528>
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	de4080e7          	jalr	-540(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004d84:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004d88:	00000693          	li	a3,0
    80004d8c:	00000613          	li	a2,0
    80004d90:	00a00593          	li	a1,10
    80004d94:	00004517          	auipc	a0,0x4
    80004d98:	7b450513          	addi	a0,a0,1972 # 80009548 <CONSOLE_STATUS+0x538>
    80004d9c:	ffffd097          	auipc	ra,0xffffd
    80004da0:	dc4080e7          	jalr	-572(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004da4:	00048a63          	beqz	s1,80004db8 <_Z19slabCacheCreateTestv+0xa0>
    80004da8:	00090863          	beqz	s2,80004db8 <_Z19slabCacheCreateTestv+0xa0>
    80004dac:	00050663          	beqz	a0,80004db8 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004db0:	ffffd097          	auipc	ra,0xffffd
    80004db4:	060080e7          	jalr	96(ra) # 80001e10 <_Z22printSlabAllocatorInfov>
}
    80004db8:	01813083          	ld	ra,24(sp)
    80004dbc:	01013403          	ld	s0,16(sp)
    80004dc0:	00813483          	ld	s1,8(sp)
    80004dc4:	00013903          	ld	s2,0(sp)
    80004dc8:	02010113          	addi	sp,sp,32
    80004dcc:	00008067          	ret

0000000080004dd0 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004dd0:	fe010113          	addi	sp,sp,-32
    80004dd4:	00113c23          	sd	ra,24(sp)
    80004dd8:	00813823          	sd	s0,16(sp)
    80004ddc:	00913423          	sd	s1,8(sp)
    80004de0:	01213023          	sd	s2,0(sp)
    80004de4:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004de8:	00f00593          	li	a1,15
    80004dec:	00007797          	auipc	a5,0x7
    80004df0:	bc47b783          	ld	a5,-1084(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004df4:	0007b503          	ld	a0,0(a5)
    80004df8:	ffffd097          	auipc	ra,0xffffd
    80004dfc:	c4c080e7          	jalr	-948(ra) # 80001a44 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004e00:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004e04:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004e08:	04400793          	li	a5,68
    80004e0c:	0297c663          	blt	a5,s1,80004e38 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004e10:	00000693          	li	a3,0
    80004e14:	00000613          	li	a2,0
    80004e18:	00a00593          	li	a1,10
    80004e1c:	00004517          	auipc	a0,0x4
    80004e20:	70c50513          	addi	a0,a0,1804 # 80009528 <CONSOLE_STATUS+0x518>
    80004e24:	ffffd097          	auipc	ra,0xffffd
    80004e28:	d3c080e7          	jalr	-708(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004e2c:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004e30:	0014849b          	addiw	s1,s1,1
    80004e34:	fd5ff06f          	j	80004e08 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004e38:	ffffd097          	auipc	ra,0xffffd
    80004e3c:	fd8080e7          	jalr	-40(ra) # 80001e10 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004e40:	00090513          	mv	a0,s2
    80004e44:	ffffd097          	auipc	ra,0xffffd
    80004e48:	28c080e7          	jalr	652(ra) # 800020d0 <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004e4c:	ffffd097          	auipc	ra,0xffffd
    80004e50:	fc4080e7          	jalr	-60(ra) # 80001e10 <_Z22printSlabAllocatorInfov>
    80004e54:	01813083          	ld	ra,24(sp)
    80004e58:	01013403          	ld	s0,16(sp)
    80004e5c:	00813483          	ld	s1,8(sp)
    80004e60:	00013903          	ld	s2,0(sp)
    80004e64:	02010113          	addi	sp,sp,32
    80004e68:	00008067          	ret

0000000080004e6c <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004e6c:	ff010113          	addi	sp,sp,-16
    80004e70:	00813423          	sd	s0,8(sp)
    80004e74:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80004e78:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004e7c:	00053423          	sd	zero,8(a0)
    80004e80:	00053023          	sd	zero,0(a0)
}
    80004e84:	00813403          	ld	s0,8(sp)
    80004e88:	01010113          	addi	sp,sp,16
    80004e8c:	00008067          	ret

0000000080004e90 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004e90:	ff010113          	addi	sp,sp,-16
    80004e94:	00813423          	sd	s0,8(sp)
    80004e98:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004e9c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004ea0:	00053783          	ld	a5,0(a0)
    80004ea4:	00078e63          	beqz	a5,80004ec0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004ea8:	00853783          	ld	a5,8(a0)
    80004eac:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004eb0:	00b53423          	sd	a1,8(a0)
    }
}
    80004eb4:	00813403          	ld	s0,8(sp)
    80004eb8:	01010113          	addi	sp,sp,16
    80004ebc:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004ec0:	00b53423          	sd	a1,8(a0)
    80004ec4:	00b53023          	sd	a1,0(a0)
    80004ec8:	fedff06f          	j	80004eb4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004ecc <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004ecc:	ff010113          	addi	sp,sp,-16
    80004ed0:	00113423          	sd	ra,8(sp)
    80004ed4:	00813023          	sd	s0,0(sp)
    80004ed8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004edc:	00007797          	auipc	a5,0x7
    80004ee0:	b247b783          	ld	a5,-1244(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004ee4:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004ee8:	00200793          	li	a5,2
    80004eec:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004ef0:	00000097          	auipc	ra,0x0
    80004ef4:	fa0080e7          	jalr	-96(ra) # 80004e90 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004ef8:	ffffd097          	auipc	ra,0xffffd
    80004efc:	67c080e7          	jalr	1660(ra) # 80002574 <_ZN3PCB8dispatchEv>
}
    80004f00:	00813083          	ld	ra,8(sp)
    80004f04:	00013403          	ld	s0,0(sp)
    80004f08:	01010113          	addi	sp,sp,16
    80004f0c:	00008067          	ret

0000000080004f10 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004f10:	00007797          	auipc	a5,0x7
    80004f14:	af07b783          	ld	a5,-1296(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004f18:	0007b783          	ld	a5,0(a5)
    80004f1c:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004f20:	01052783          	lw	a5,16(a0)
    80004f24:	fff7879b          	addiw	a5,a5,-1
    80004f28:	00f52823          	sw	a5,16(a0)
    80004f2c:	02079713          	slli	a4,a5,0x20
    80004f30:	00074663          	bltz	a4,80004f3c <_ZN10KSemaphore4waitEv+0x2c>
}
    80004f34:	00000513          	li	a0,0
    80004f38:	00008067          	ret
{
    80004f3c:	ff010113          	addi	sp,sp,-16
    80004f40:	00113423          	sd	ra,8(sp)
    80004f44:	00813023          	sd	s0,0(sp)
    80004f48:	01010413          	addi	s0,sp,16
        block();
    80004f4c:	00000097          	auipc	ra,0x0
    80004f50:	f80080e7          	jalr	-128(ra) # 80004ecc <_ZN10KSemaphore5blockEv>
}
    80004f54:	00000513          	li	a0,0
    80004f58:	00813083          	ld	ra,8(sp)
    80004f5c:	00013403          	ld	s0,0(sp)
    80004f60:	01010113          	addi	sp,sp,16
    80004f64:	00008067          	ret

0000000080004f68 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004f68:	ff010113          	addi	sp,sp,-16
    80004f6c:	00813423          	sd	s0,8(sp)
    80004f70:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004f74:	00053503          	ld	a0,0(a0)
    80004f78:	00813403          	ld	s0,8(sp)
    80004f7c:	01010113          	addi	sp,sp,16
    80004f80:	00008067          	ret

0000000080004f84 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004f84:	ff010113          	addi	sp,sp,-16
    80004f88:	00813423          	sd	s0,8(sp)
    80004f8c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004f90:	00053783          	ld	a5,0(a0)
    80004f94:	00078c63          	beqz	a5,80004fac <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004f98:	0087b703          	ld	a4,8(a5)
    80004f9c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004fa0:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004fa4:	00053783          	ld	a5,0(a0)
    80004fa8:	00078863          	beqz	a5,80004fb8 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004fac:	00813403          	ld	s0,8(sp)
    80004fb0:	01010113          	addi	sp,sp,16
    80004fb4:	00008067          	ret
        tailBlocked =0;
    80004fb8:	00053423          	sd	zero,8(a0)
    80004fbc:	ff1ff06f          	j	80004fac <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004fc0 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004fc0:	fe010113          	addi	sp,sp,-32
    80004fc4:	00113c23          	sd	ra,24(sp)
    80004fc8:	00813823          	sd	s0,16(sp)
    80004fcc:	00913423          	sd	s1,8(sp)
    80004fd0:	01213023          	sd	s2,0(sp)
    80004fd4:	02010413          	addi	s0,sp,32
    80004fd8:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004fdc:	00090513          	mv	a0,s2
    80004fe0:	00000097          	auipc	ra,0x0
    80004fe4:	f88080e7          	jalr	-120(ra) # 80004f68 <_ZN10KSemaphore15getFirstBlockedEv>
    80004fe8:	00050493          	mv	s1,a0
    80004fec:	02050463          	beqz	a0,80005014 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80004ff0:	00090513          	mv	a0,s2
    80004ff4:	00000097          	auipc	ra,0x0
    80004ff8:	f90080e7          	jalr	-112(ra) # 80004f84 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80004ffc:	00100793          	li	a5,1
    80005000:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80005004:	00048513          	mv	a0,s1
    80005008:	fffff097          	auipc	ra,0xfffff
    8000500c:	9dc080e7          	jalr	-1572(ra) # 800039e4 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80005010:	fcdff06f          	j	80004fdc <_ZN10KSemaphoreD1Ev+0x1c>
}
    80005014:	01813083          	ld	ra,24(sp)
    80005018:	01013403          	ld	s0,16(sp)
    8000501c:	00813483          	ld	s1,8(sp)
    80005020:	00013903          	ld	s2,0(sp)
    80005024:	02010113          	addi	sp,sp,32
    80005028:	00008067          	ret

000000008000502c <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    8000502c:	fe010113          	addi	sp,sp,-32
    80005030:	00113c23          	sd	ra,24(sp)
    80005034:	00813823          	sd	s0,16(sp)
    80005038:	00913423          	sd	s1,8(sp)
    8000503c:	01213023          	sd	s2,0(sp)
    80005040:	02010413          	addi	s0,sp,32
    80005044:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80005048:	00000097          	auipc	ra,0x0
    8000504c:	f20080e7          	jalr	-224(ra) # 80004f68 <_ZN10KSemaphore15getFirstBlockedEv>
    80005050:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80005054:	00090513          	mv	a0,s2
    80005058:	00000097          	auipc	ra,0x0
    8000505c:	f2c080e7          	jalr	-212(ra) # 80004f84 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80005060:	00048863          	beqz	s1,80005070 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80005064:	00048513          	mv	a0,s1
    80005068:	fffff097          	auipc	ra,0xfffff
    8000506c:	97c080e7          	jalr	-1668(ra) # 800039e4 <_ZN9Scheduler3putEP3PCB>
    }
}
    80005070:	01813083          	ld	ra,24(sp)
    80005074:	01013403          	ld	s0,16(sp)
    80005078:	00813483          	ld	s1,8(sp)
    8000507c:	00013903          	ld	s2,0(sp)
    80005080:	02010113          	addi	sp,sp,32
    80005084:	00008067          	ret

0000000080005088 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80005088:	01052783          	lw	a5,16(a0)
    8000508c:	0017879b          	addiw	a5,a5,1
    80005090:	0007871b          	sext.w	a4,a5
    80005094:	00f52823          	sw	a5,16(a0)
    80005098:	00e05663          	blez	a4,800050a4 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000509c:	00000513          	li	a0,0
    800050a0:	00008067          	ret
uint64 KSemaphore::signal() {
    800050a4:	ff010113          	addi	sp,sp,-16
    800050a8:	00113423          	sd	ra,8(sp)
    800050ac:	00813023          	sd	s0,0(sp)
    800050b0:	01010413          	addi	s0,sp,16
        unblock();
    800050b4:	00000097          	auipc	ra,0x0
    800050b8:	f78080e7          	jalr	-136(ra) # 8000502c <_ZN10KSemaphore7unblockEv>
}
    800050bc:	00000513          	li	a0,0
    800050c0:	00813083          	ld	ra,8(sp)
    800050c4:	00013403          	ld	s0,0(sp)
    800050c8:	01010113          	addi	sp,sp,16
    800050cc:	00008067          	ret

00000000800050d0 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800050d0:	ff010113          	addi	sp,sp,-16
    800050d4:	00113423          	sd	ra,8(sp)
    800050d8:	00813023          	sd	s0,0(sp)
    800050dc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800050e0:	00000097          	auipc	ra,0x0
    800050e4:	b3c080e7          	jalr	-1220(ra) # 80004c1c <_ZN15MemoryAllocator7kmallocEm>
}
    800050e8:	00813083          	ld	ra,8(sp)
    800050ec:	00013403          	ld	s0,0(sp)
    800050f0:	01010113          	addi	sp,sp,16
    800050f4:	00008067          	ret

00000000800050f8 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800050f8:	fd010113          	addi	sp,sp,-48
    800050fc:	02113423          	sd	ra,40(sp)
    80005100:	02813023          	sd	s0,32(sp)
    80005104:	00913c23          	sd	s1,24(sp)
    80005108:	01213823          	sd	s2,16(sp)
    8000510c:	01313423          	sd	s3,8(sp)
    80005110:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80005114:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80005118:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    8000511c:	01800513          	li	a0,24
    80005120:	00000097          	auipc	ra,0x0
    80005124:	fb0080e7          	jalr	-80(ra) # 800050d0 <_ZN10KSemaphorenwEm>
    80005128:	00050493          	mv	s1,a0
    8000512c:	0009859b          	sext.w	a1,s3
    80005130:	00000097          	auipc	ra,0x0
    80005134:	d3c080e7          	jalr	-708(ra) # 80004e6c <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005138:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    8000513c:	02048663          	beqz	s1,80005168 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80005140:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005144:	fffff097          	auipc	ra,0xfffff
    80005148:	360080e7          	jalr	864(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000514c:	02813083          	ld	ra,40(sp)
    80005150:	02013403          	ld	s0,32(sp)
    80005154:	01813483          	ld	s1,24(sp)
    80005158:	01013903          	ld	s2,16(sp)
    8000515c:	00813983          	ld	s3,8(sp)
    80005160:	03010113          	addi	sp,sp,48
    80005164:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80005168:	fff00513          	li	a0,-1
    8000516c:	fd9ff06f          	j	80005144 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080005170 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005170:	ff010113          	addi	sp,sp,-16
    80005174:	00113423          	sd	ra,8(sp)
    80005178:	00813023          	sd	s0,0(sp)
    8000517c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80005180:	00000097          	auipc	ra,0x0
    80005184:	b00080e7          	jalr	-1280(ra) # 80004c80 <_ZN15MemoryAllocator5kfreeEPv>
}
    80005188:	00813083          	ld	ra,8(sp)
    8000518c:	00013403          	ld	s0,0(sp)
    80005190:	01010113          	addi	sp,sp,16
    80005194:	00008067          	ret

0000000080005198 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80005198:	ff010113          	addi	sp,sp,-16
    8000519c:	00113423          	sd	ra,8(sp)
    800051a0:	00813023          	sd	s0,0(sp)
    800051a4:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800051a8:	00058513          	mv	a0,a1
    kSem->wait();
    800051ac:	00000097          	auipc	ra,0x0
    800051b0:	d64080e7          	jalr	-668(ra) # 80004f10 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800051b4:	00007797          	auipc	a5,0x7
    800051b8:	84c7b783          	ld	a5,-1972(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x68>
    800051bc:	0007b783          	ld	a5,0(a5)
    800051c0:	0587c783          	lbu	a5,88(a5)
    800051c4:	02078063          	beqz	a5,800051e4 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800051c8:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800051cc:	fffff097          	auipc	ra,0xfffff
    800051d0:	2d8080e7          	jalr	728(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    800051d4:	00813083          	ld	ra,8(sp)
    800051d8:	00013403          	ld	s0,0(sp)
    800051dc:	01010113          	addi	sp,sp,16
    800051e0:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800051e4:	00000513          	li	a0,0
    800051e8:	fe5ff06f          	j	800051cc <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800051ec <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800051ec:	ff010113          	addi	sp,sp,-16
    800051f0:	00113423          	sd	ra,8(sp)
    800051f4:	00813023          	sd	s0,0(sp)
    800051f8:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800051fc:	00058513          	mv	a0,a1
    if (kSem == 0)
    80005200:	02050463          	beqz	a0,80005228 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80005204:	00000097          	auipc	ra,0x0
    80005208:	e84080e7          	jalr	-380(ra) # 80005088 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    8000520c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005210:	fffff097          	auipc	ra,0xfffff
    80005214:	294080e7          	jalr	660(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005218:	00813083          	ld	ra,8(sp)
    8000521c:	00013403          	ld	s0,0(sp)
    80005220:	01010113          	addi	sp,sp,16
    80005224:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005228:	00100513          	li	a0,1
    8000522c:	fe5ff06f          	j	80005210 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005230 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005230:	fe010113          	addi	sp,sp,-32
    80005234:	00113c23          	sd	ra,24(sp)
    80005238:	00813823          	sd	s0,16(sp)
    8000523c:	00913423          	sd	s1,8(sp)
    80005240:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005244:	00058493          	mv	s1,a1
    delete kSem;
    80005248:	00048e63          	beqz	s1,80005264 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    8000524c:	00048513          	mv	a0,s1
    80005250:	00000097          	auipc	ra,0x0
    80005254:	d70080e7          	jalr	-656(ra) # 80004fc0 <_ZN10KSemaphoreD1Ev>
    80005258:	00048513          	mv	a0,s1
    8000525c:	00000097          	auipc	ra,0x0
    80005260:	f14080e7          	jalr	-236(ra) # 80005170 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005264:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	23c080e7          	jalr	572(ra) # 800044a4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005270:	01813083          	ld	ra,24(sp)
    80005274:	01013403          	ld	s0,16(sp)
    80005278:	00813483          	ld	s1,8(sp)
    8000527c:	02010113          	addi	sp,sp,32
    80005280:	00008067          	ret

0000000080005284 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005284:	fe010113          	addi	sp,sp,-32
    80005288:	00113c23          	sd	ra,24(sp)
    8000528c:	00813823          	sd	s0,16(sp)
    80005290:	00913423          	sd	s1,8(sp)
    80005294:	02010413          	addi	s0,sp,32
    80005298:	00050493          	mv	s1,a0
    LOCK();
    8000529c:	00100613          	li	a2,1
    800052a0:	00000593          	li	a1,0
    800052a4:	0000b517          	auipc	a0,0xb
    800052a8:	86c50513          	addi	a0,a0,-1940 # 8000fb10 <lockPrint>
    800052ac:	ffffc097          	auipc	ra,0xffffc
    800052b0:	f6c080e7          	jalr	-148(ra) # 80001218 <copy_and_swap>
    800052b4:	fe0514e3          	bnez	a0,8000529c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800052b8:	0004c503          	lbu	a0,0(s1)
    800052bc:	00050a63          	beqz	a0,800052d0 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800052c0:	ffffd097          	auipc	ra,0xffffd
    800052c4:	158080e7          	jalr	344(ra) # 80002418 <_Z4putcc>
        string++;
    800052c8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800052cc:	fedff06f          	j	800052b8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800052d0:	00000613          	li	a2,0
    800052d4:	00100593          	li	a1,1
    800052d8:	0000b517          	auipc	a0,0xb
    800052dc:	83850513          	addi	a0,a0,-1992 # 8000fb10 <lockPrint>
    800052e0:	ffffc097          	auipc	ra,0xffffc
    800052e4:	f38080e7          	jalr	-200(ra) # 80001218 <copy_and_swap>
    800052e8:	fe0514e3          	bnez	a0,800052d0 <_Z11printStringPKc+0x4c>
}
    800052ec:	01813083          	ld	ra,24(sp)
    800052f0:	01013403          	ld	s0,16(sp)
    800052f4:	00813483          	ld	s1,8(sp)
    800052f8:	02010113          	addi	sp,sp,32
    800052fc:	00008067          	ret

0000000080005300 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005300:	fd010113          	addi	sp,sp,-48
    80005304:	02113423          	sd	ra,40(sp)
    80005308:	02813023          	sd	s0,32(sp)
    8000530c:	00913c23          	sd	s1,24(sp)
    80005310:	01213823          	sd	s2,16(sp)
    80005314:	01313423          	sd	s3,8(sp)
    80005318:	01413023          	sd	s4,0(sp)
    8000531c:	03010413          	addi	s0,sp,48
    80005320:	00050993          	mv	s3,a0
    80005324:	00058a13          	mv	s4,a1
    LOCK();
    80005328:	00100613          	li	a2,1
    8000532c:	00000593          	li	a1,0
    80005330:	0000a517          	auipc	a0,0xa
    80005334:	7e050513          	addi	a0,a0,2016 # 8000fb10 <lockPrint>
    80005338:	ffffc097          	auipc	ra,0xffffc
    8000533c:	ee0080e7          	jalr	-288(ra) # 80001218 <copy_and_swap>
    80005340:	fe0514e3          	bnez	a0,80005328 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005344:	00000913          	li	s2,0
    80005348:	00090493          	mv	s1,s2
    8000534c:	0019091b          	addiw	s2,s2,1
    80005350:	03495a63          	bge	s2,s4,80005384 <_Z9getStringPci+0x84>
        cc = getc();
    80005354:	ffffd097          	auipc	ra,0xffffd
    80005358:	09c080e7          	jalr	156(ra) # 800023f0 <_Z4getcv>
        if(cc < 1)
    8000535c:	02050463          	beqz	a0,80005384 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005360:	009984b3          	add	s1,s3,s1
    80005364:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005368:	00a00793          	li	a5,10
    8000536c:	00f50a63          	beq	a0,a5,80005380 <_Z9getStringPci+0x80>
    80005370:	00d00793          	li	a5,13
    80005374:	fcf51ae3          	bne	a0,a5,80005348 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005378:	00090493          	mv	s1,s2
    8000537c:	0080006f          	j	80005384 <_Z9getStringPci+0x84>
    80005380:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005384:	009984b3          	add	s1,s3,s1
    80005388:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000538c:	00000613          	li	a2,0
    80005390:	00100593          	li	a1,1
    80005394:	0000a517          	auipc	a0,0xa
    80005398:	77c50513          	addi	a0,a0,1916 # 8000fb10 <lockPrint>
    8000539c:	ffffc097          	auipc	ra,0xffffc
    800053a0:	e7c080e7          	jalr	-388(ra) # 80001218 <copy_and_swap>
    800053a4:	fe0514e3          	bnez	a0,8000538c <_Z9getStringPci+0x8c>
    return buf;
}
    800053a8:	00098513          	mv	a0,s3
    800053ac:	02813083          	ld	ra,40(sp)
    800053b0:	02013403          	ld	s0,32(sp)
    800053b4:	01813483          	ld	s1,24(sp)
    800053b8:	01013903          	ld	s2,16(sp)
    800053bc:	00813983          	ld	s3,8(sp)
    800053c0:	00013a03          	ld	s4,0(sp)
    800053c4:	03010113          	addi	sp,sp,48
    800053c8:	00008067          	ret

00000000800053cc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800053cc:	ff010113          	addi	sp,sp,-16
    800053d0:	00813423          	sd	s0,8(sp)
    800053d4:	01010413          	addi	s0,sp,16
    800053d8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800053dc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800053e0:	0006c603          	lbu	a2,0(a3)
    800053e4:	fd06071b          	addiw	a4,a2,-48
    800053e8:	0ff77713          	andi	a4,a4,255
    800053ec:	00900793          	li	a5,9
    800053f0:	02e7e063          	bltu	a5,a4,80005410 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800053f4:	0025179b          	slliw	a5,a0,0x2
    800053f8:	00a787bb          	addw	a5,a5,a0
    800053fc:	0017979b          	slliw	a5,a5,0x1
    80005400:	00168693          	addi	a3,a3,1
    80005404:	00c787bb          	addw	a5,a5,a2
    80005408:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000540c:	fd5ff06f          	j	800053e0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005410:	00813403          	ld	s0,8(sp)
    80005414:	01010113          	addi	sp,sp,16
    80005418:	00008067          	ret

000000008000541c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000541c:	fc010113          	addi	sp,sp,-64
    80005420:	02113c23          	sd	ra,56(sp)
    80005424:	02813823          	sd	s0,48(sp)
    80005428:	02913423          	sd	s1,40(sp)
    8000542c:	03213023          	sd	s2,32(sp)
    80005430:	01313c23          	sd	s3,24(sp)
    80005434:	04010413          	addi	s0,sp,64
    80005438:	00050493          	mv	s1,a0
    8000543c:	00058913          	mv	s2,a1
    80005440:	00060993          	mv	s3,a2
    LOCK();
    80005444:	00100613          	li	a2,1
    80005448:	00000593          	li	a1,0
    8000544c:	0000a517          	auipc	a0,0xa
    80005450:	6c450513          	addi	a0,a0,1732 # 8000fb10 <lockPrint>
    80005454:	ffffc097          	auipc	ra,0xffffc
    80005458:	dc4080e7          	jalr	-572(ra) # 80001218 <copy_and_swap>
    8000545c:	fe0514e3          	bnez	a0,80005444 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005460:	00098463          	beqz	s3,80005468 <_Z8printIntiii+0x4c>
    80005464:	0804c463          	bltz	s1,800054ec <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005468:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000546c:	00000593          	li	a1,0
    }

    i = 0;
    80005470:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005474:	0009079b          	sext.w	a5,s2
    80005478:	0325773b          	remuw	a4,a0,s2
    8000547c:	00048613          	mv	a2,s1
    80005480:	0014849b          	addiw	s1,s1,1
    80005484:	02071693          	slli	a3,a4,0x20
    80005488:	0206d693          	srli	a3,a3,0x20
    8000548c:	00006717          	auipc	a4,0x6
    80005490:	4f470713          	addi	a4,a4,1268 # 8000b980 <digits>
    80005494:	00d70733          	add	a4,a4,a3
    80005498:	00074683          	lbu	a3,0(a4)
    8000549c:	fd040713          	addi	a4,s0,-48
    800054a0:	00c70733          	add	a4,a4,a2
    800054a4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800054a8:	0005071b          	sext.w	a4,a0
    800054ac:	0325553b          	divuw	a0,a0,s2
    800054b0:	fcf772e3          	bgeu	a4,a5,80005474 <_Z8printIntiii+0x58>
    if(neg)
    800054b4:	00058c63          	beqz	a1,800054cc <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800054b8:	fd040793          	addi	a5,s0,-48
    800054bc:	009784b3          	add	s1,a5,s1
    800054c0:	02d00793          	li	a5,45
    800054c4:	fef48823          	sb	a5,-16(s1)
    800054c8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800054cc:	fff4849b          	addiw	s1,s1,-1
    800054d0:	0204c463          	bltz	s1,800054f8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800054d4:	fd040793          	addi	a5,s0,-48
    800054d8:	009787b3          	add	a5,a5,s1
    800054dc:	ff07c503          	lbu	a0,-16(a5)
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	f38080e7          	jalr	-200(ra) # 80002418 <_Z4putcc>
    800054e8:	fe5ff06f          	j	800054cc <_Z8printIntiii+0xb0>
        x = -xx;
    800054ec:	4090053b          	negw	a0,s1
        neg = 1;
    800054f0:	00100593          	li	a1,1
        x = -xx;
    800054f4:	f7dff06f          	j	80005470 <_Z8printIntiii+0x54>

    UNLOCK();
    800054f8:	00000613          	li	a2,0
    800054fc:	00100593          	li	a1,1
    80005500:	0000a517          	auipc	a0,0xa
    80005504:	61050513          	addi	a0,a0,1552 # 8000fb10 <lockPrint>
    80005508:	ffffc097          	auipc	ra,0xffffc
    8000550c:	d10080e7          	jalr	-752(ra) # 80001218 <copy_and_swap>
    80005510:	fe0514e3          	bnez	a0,800054f8 <_Z8printIntiii+0xdc>
}
    80005514:	03813083          	ld	ra,56(sp)
    80005518:	03013403          	ld	s0,48(sp)
    8000551c:	02813483          	ld	s1,40(sp)
    80005520:	02013903          	ld	s2,32(sp)
    80005524:	01813983          	ld	s3,24(sp)
    80005528:	04010113          	addi	sp,sp,64
    8000552c:	00008067          	ret

0000000080005530 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005530:	fd010113          	addi	sp,sp,-48
    80005534:	02113423          	sd	ra,40(sp)
    80005538:	02813023          	sd	s0,32(sp)
    8000553c:	00913c23          	sd	s1,24(sp)
    80005540:	01213823          	sd	s2,16(sp)
    80005544:	01313423          	sd	s3,8(sp)
    80005548:	03010413          	addi	s0,sp,48
    8000554c:	00050493          	mv	s1,a0
    80005550:	00058913          	mv	s2,a1
    80005554:	0015879b          	addiw	a5,a1,1
    80005558:	0007851b          	sext.w	a0,a5
    8000555c:	00f4a023          	sw	a5,0(s1)
    80005560:	0004a823          	sw	zero,16(s1)
    80005564:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005568:	00251513          	slli	a0,a0,0x2
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	bcc080e7          	jalr	-1076(ra) # 80002138 <_Z9mem_allocm>
    80005574:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005578:	01000513          	li	a0,16
    8000557c:	fffff097          	auipc	ra,0xfffff
    80005580:	8ec080e7          	jalr	-1812(ra) # 80003e68 <_Znwm>
    80005584:	00050993          	mv	s3,a0
    80005588:	00000593          	li	a1,0
    8000558c:	fffff097          	auipc	ra,0xfffff
    80005590:	b30080e7          	jalr	-1232(ra) # 800040bc <_ZN9SemaphoreC1Ej>
    80005594:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005598:	01000513          	li	a0,16
    8000559c:	fffff097          	auipc	ra,0xfffff
    800055a0:	8cc080e7          	jalr	-1844(ra) # 80003e68 <_Znwm>
    800055a4:	00050993          	mv	s3,a0
    800055a8:	00090593          	mv	a1,s2
    800055ac:	fffff097          	auipc	ra,0xfffff
    800055b0:	b10080e7          	jalr	-1264(ra) # 800040bc <_ZN9SemaphoreC1Ej>
    800055b4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800055b8:	01000513          	li	a0,16
    800055bc:	fffff097          	auipc	ra,0xfffff
    800055c0:	8ac080e7          	jalr	-1876(ra) # 80003e68 <_Znwm>
    800055c4:	00050913          	mv	s2,a0
    800055c8:	00100593          	li	a1,1
    800055cc:	fffff097          	auipc	ra,0xfffff
    800055d0:	af0080e7          	jalr	-1296(ra) # 800040bc <_ZN9SemaphoreC1Ej>
    800055d4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800055d8:	01000513          	li	a0,16
    800055dc:	fffff097          	auipc	ra,0xfffff
    800055e0:	88c080e7          	jalr	-1908(ra) # 80003e68 <_Znwm>
    800055e4:	00050913          	mv	s2,a0
    800055e8:	00100593          	li	a1,1
    800055ec:	fffff097          	auipc	ra,0xfffff
    800055f0:	ad0080e7          	jalr	-1328(ra) # 800040bc <_ZN9SemaphoreC1Ej>
    800055f4:	0324b823          	sd	s2,48(s1)
}
    800055f8:	02813083          	ld	ra,40(sp)
    800055fc:	02013403          	ld	s0,32(sp)
    80005600:	01813483          	ld	s1,24(sp)
    80005604:	01013903          	ld	s2,16(sp)
    80005608:	00813983          	ld	s3,8(sp)
    8000560c:	03010113          	addi	sp,sp,48
    80005610:	00008067          	ret
    80005614:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005618:	00098513          	mv	a0,s3
    8000561c:	fffff097          	auipc	ra,0xfffff
    80005620:	874080e7          	jalr	-1932(ra) # 80003e90 <_ZdlPv>
    80005624:	00048513          	mv	a0,s1
    80005628:	0000b097          	auipc	ra,0xb
    8000562c:	5c0080e7          	jalr	1472(ra) # 80010be8 <_Unwind_Resume>
    80005630:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005634:	00098513          	mv	a0,s3
    80005638:	fffff097          	auipc	ra,0xfffff
    8000563c:	858080e7          	jalr	-1960(ra) # 80003e90 <_ZdlPv>
    80005640:	00048513          	mv	a0,s1
    80005644:	0000b097          	auipc	ra,0xb
    80005648:	5a4080e7          	jalr	1444(ra) # 80010be8 <_Unwind_Resume>
    8000564c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005650:	00090513          	mv	a0,s2
    80005654:	fffff097          	auipc	ra,0xfffff
    80005658:	83c080e7          	jalr	-1988(ra) # 80003e90 <_ZdlPv>
    8000565c:	00048513          	mv	a0,s1
    80005660:	0000b097          	auipc	ra,0xb
    80005664:	588080e7          	jalr	1416(ra) # 80010be8 <_Unwind_Resume>
    80005668:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000566c:	00090513          	mv	a0,s2
    80005670:	fffff097          	auipc	ra,0xfffff
    80005674:	820080e7          	jalr	-2016(ra) # 80003e90 <_ZdlPv>
    80005678:	00048513          	mv	a0,s1
    8000567c:	0000b097          	auipc	ra,0xb
    80005680:	56c080e7          	jalr	1388(ra) # 80010be8 <_Unwind_Resume>

0000000080005684 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005684:	fe010113          	addi	sp,sp,-32
    80005688:	00113c23          	sd	ra,24(sp)
    8000568c:	00813823          	sd	s0,16(sp)
    80005690:	00913423          	sd	s1,8(sp)
    80005694:	01213023          	sd	s2,0(sp)
    80005698:	02010413          	addi	s0,sp,32
    8000569c:	00050493          	mv	s1,a0
    800056a0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800056a4:	01853503          	ld	a0,24(a0)
    800056a8:	fffff097          	auipc	ra,0xfffff
    800056ac:	9dc080e7          	jalr	-1572(ra) # 80004084 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800056b0:	0304b503          	ld	a0,48(s1)
    800056b4:	fffff097          	auipc	ra,0xfffff
    800056b8:	9d0080e7          	jalr	-1584(ra) # 80004084 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800056bc:	0084b783          	ld	a5,8(s1)
    800056c0:	0144a703          	lw	a4,20(s1)
    800056c4:	00271713          	slli	a4,a4,0x2
    800056c8:	00e787b3          	add	a5,a5,a4
    800056cc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800056d0:	0144a783          	lw	a5,20(s1)
    800056d4:	0017879b          	addiw	a5,a5,1
    800056d8:	0004a703          	lw	a4,0(s1)
    800056dc:	02e7e7bb          	remw	a5,a5,a4
    800056e0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800056e4:	0304b503          	ld	a0,48(s1)
    800056e8:	fffff097          	auipc	ra,0xfffff
    800056ec:	a20080e7          	jalr	-1504(ra) # 80004108 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800056f0:	0204b503          	ld	a0,32(s1)
    800056f4:	fffff097          	auipc	ra,0xfffff
    800056f8:	a14080e7          	jalr	-1516(ra) # 80004108 <_ZN9Semaphore6signalEv>

}
    800056fc:	01813083          	ld	ra,24(sp)
    80005700:	01013403          	ld	s0,16(sp)
    80005704:	00813483          	ld	s1,8(sp)
    80005708:	00013903          	ld	s2,0(sp)
    8000570c:	02010113          	addi	sp,sp,32
    80005710:	00008067          	ret

0000000080005714 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005714:	fe010113          	addi	sp,sp,-32
    80005718:	00113c23          	sd	ra,24(sp)
    8000571c:	00813823          	sd	s0,16(sp)
    80005720:	00913423          	sd	s1,8(sp)
    80005724:	01213023          	sd	s2,0(sp)
    80005728:	02010413          	addi	s0,sp,32
    8000572c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005730:	02053503          	ld	a0,32(a0)
    80005734:	fffff097          	auipc	ra,0xfffff
    80005738:	950080e7          	jalr	-1712(ra) # 80004084 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000573c:	0284b503          	ld	a0,40(s1)
    80005740:	fffff097          	auipc	ra,0xfffff
    80005744:	944080e7          	jalr	-1724(ra) # 80004084 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005748:	0084b703          	ld	a4,8(s1)
    8000574c:	0104a783          	lw	a5,16(s1)
    80005750:	00279693          	slli	a3,a5,0x2
    80005754:	00d70733          	add	a4,a4,a3
    80005758:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000575c:	0017879b          	addiw	a5,a5,1
    80005760:	0004a703          	lw	a4,0(s1)
    80005764:	02e7e7bb          	remw	a5,a5,a4
    80005768:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000576c:	0284b503          	ld	a0,40(s1)
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	998080e7          	jalr	-1640(ra) # 80004108 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005778:	0184b503          	ld	a0,24(s1)
    8000577c:	fffff097          	auipc	ra,0xfffff
    80005780:	98c080e7          	jalr	-1652(ra) # 80004108 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005784:	00090513          	mv	a0,s2
    80005788:	01813083          	ld	ra,24(sp)
    8000578c:	01013403          	ld	s0,16(sp)
    80005790:	00813483          	ld	s1,8(sp)
    80005794:	00013903          	ld	s2,0(sp)
    80005798:	02010113          	addi	sp,sp,32
    8000579c:	00008067          	ret

00000000800057a0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800057a0:	fe010113          	addi	sp,sp,-32
    800057a4:	00113c23          	sd	ra,24(sp)
    800057a8:	00813823          	sd	s0,16(sp)
    800057ac:	00913423          	sd	s1,8(sp)
    800057b0:	01213023          	sd	s2,0(sp)
    800057b4:	02010413          	addi	s0,sp,32
    800057b8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800057bc:	02853503          	ld	a0,40(a0)
    800057c0:	fffff097          	auipc	ra,0xfffff
    800057c4:	8c4080e7          	jalr	-1852(ra) # 80004084 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800057c8:	0304b503          	ld	a0,48(s1)
    800057cc:	fffff097          	auipc	ra,0xfffff
    800057d0:	8b8080e7          	jalr	-1864(ra) # 80004084 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800057d4:	0144a783          	lw	a5,20(s1)
    800057d8:	0104a903          	lw	s2,16(s1)
    800057dc:	0327ce63          	blt	a5,s2,80005818 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800057e0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800057e4:	0304b503          	ld	a0,48(s1)
    800057e8:	fffff097          	auipc	ra,0xfffff
    800057ec:	920080e7          	jalr	-1760(ra) # 80004108 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800057f0:	0284b503          	ld	a0,40(s1)
    800057f4:	fffff097          	auipc	ra,0xfffff
    800057f8:	914080e7          	jalr	-1772(ra) # 80004108 <_ZN9Semaphore6signalEv>

    return ret;
}
    800057fc:	00090513          	mv	a0,s2
    80005800:	01813083          	ld	ra,24(sp)
    80005804:	01013403          	ld	s0,16(sp)
    80005808:	00813483          	ld	s1,8(sp)
    8000580c:	00013903          	ld	s2,0(sp)
    80005810:	02010113          	addi	sp,sp,32
    80005814:	00008067          	ret
        ret = cap - head + tail;
    80005818:	0004a703          	lw	a4,0(s1)
    8000581c:	4127093b          	subw	s2,a4,s2
    80005820:	00f9093b          	addw	s2,s2,a5
    80005824:	fc1ff06f          	j	800057e4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005828 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005828:	fe010113          	addi	sp,sp,-32
    8000582c:	00113c23          	sd	ra,24(sp)
    80005830:	00813823          	sd	s0,16(sp)
    80005834:	00913423          	sd	s1,8(sp)
    80005838:	02010413          	addi	s0,sp,32
    8000583c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005840:	00a00513          	li	a0,10
    80005844:	fffff097          	auipc	ra,0xfffff
    80005848:	924080e7          	jalr	-1756(ra) # 80004168 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000584c:	00004517          	auipc	a0,0x4
    80005850:	d0c50513          	addi	a0,a0,-756 # 80009558 <CONSOLE_STATUS+0x548>
    80005854:	00000097          	auipc	ra,0x0
    80005858:	a30080e7          	jalr	-1488(ra) # 80005284 <_Z11printStringPKc>
    while (getCnt()) {
    8000585c:	00048513          	mv	a0,s1
    80005860:	00000097          	auipc	ra,0x0
    80005864:	f40080e7          	jalr	-192(ra) # 800057a0 <_ZN9BufferCPP6getCntEv>
    80005868:	02050c63          	beqz	a0,800058a0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000586c:	0084b783          	ld	a5,8(s1)
    80005870:	0104a703          	lw	a4,16(s1)
    80005874:	00271713          	slli	a4,a4,0x2
    80005878:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000587c:	0007c503          	lbu	a0,0(a5)
    80005880:	fffff097          	auipc	ra,0xfffff
    80005884:	8e8080e7          	jalr	-1816(ra) # 80004168 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005888:	0104a783          	lw	a5,16(s1)
    8000588c:	0017879b          	addiw	a5,a5,1
    80005890:	0004a703          	lw	a4,0(s1)
    80005894:	02e7e7bb          	remw	a5,a5,a4
    80005898:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000589c:	fc1ff06f          	j	8000585c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800058a0:	02100513          	li	a0,33
    800058a4:	fffff097          	auipc	ra,0xfffff
    800058a8:	8c4080e7          	jalr	-1852(ra) # 80004168 <_ZN7Console4putcEc>
    Console::putc('\n');
    800058ac:	00a00513          	li	a0,10
    800058b0:	fffff097          	auipc	ra,0xfffff
    800058b4:	8b8080e7          	jalr	-1864(ra) # 80004168 <_ZN7Console4putcEc>
    mem_free(buffer);
    800058b8:	0084b503          	ld	a0,8(s1)
    800058bc:	ffffd097          	auipc	ra,0xffffd
    800058c0:	8ac080e7          	jalr	-1876(ra) # 80002168 <_Z8mem_freePv>
    delete itemAvailable;
    800058c4:	0204b503          	ld	a0,32(s1)
    800058c8:	00050863          	beqz	a0,800058d8 <_ZN9BufferCPPD1Ev+0xb0>
    800058cc:	00053783          	ld	a5,0(a0)
    800058d0:	0087b783          	ld	a5,8(a5)
    800058d4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800058d8:	0184b503          	ld	a0,24(s1)
    800058dc:	00050863          	beqz	a0,800058ec <_ZN9BufferCPPD1Ev+0xc4>
    800058e0:	00053783          	ld	a5,0(a0)
    800058e4:	0087b783          	ld	a5,8(a5)
    800058e8:	000780e7          	jalr	a5
    delete mutexTail;
    800058ec:	0304b503          	ld	a0,48(s1)
    800058f0:	00050863          	beqz	a0,80005900 <_ZN9BufferCPPD1Ev+0xd8>
    800058f4:	00053783          	ld	a5,0(a0)
    800058f8:	0087b783          	ld	a5,8(a5)
    800058fc:	000780e7          	jalr	a5
    delete mutexHead;
    80005900:	0284b503          	ld	a0,40(s1)
    80005904:	00050863          	beqz	a0,80005914 <_ZN9BufferCPPD1Ev+0xec>
    80005908:	00053783          	ld	a5,0(a0)
    8000590c:	0087b783          	ld	a5,8(a5)
    80005910:	000780e7          	jalr	a5
}
    80005914:	01813083          	ld	ra,24(sp)
    80005918:	01013403          	ld	s0,16(sp)
    8000591c:	00813483          	ld	s1,8(sp)
    80005920:	02010113          	addi	sp,sp,32
    80005924:	00008067          	ret

0000000080005928 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005928:	fe010113          	addi	sp,sp,-32
    8000592c:	00113c23          	sd	ra,24(sp)
    80005930:	00813823          	sd	s0,16(sp)
    80005934:	00913423          	sd	s1,8(sp)
    80005938:	01213023          	sd	s2,0(sp)
    8000593c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005940:	00000913          	li	s2,0
    80005944:	0380006f          	j	8000597c <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005948:	ffffd097          	auipc	ra,0xffffd
    8000594c:	8cc080e7          	jalr	-1844(ra) # 80002214 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005950:	00148493          	addi	s1,s1,1
    80005954:	000027b7          	lui	a5,0x2
    80005958:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000595c:	0097ee63          	bltu	a5,s1,80005978 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005960:	00000713          	li	a4,0
    80005964:	000077b7          	lui	a5,0x7
    80005968:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000596c:	fce7eee3          	bltu	a5,a4,80005948 <_Z11workerBodyAPv+0x20>
    80005970:	00170713          	addi	a4,a4,1
    80005974:	ff1ff06f          	j	80005964 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005978:	00190913          	addi	s2,s2,1
    8000597c:	00900793          	li	a5,9
    80005980:	0527e063          	bltu	a5,s2,800059c0 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005984:	00004517          	auipc	a0,0x4
    80005988:	bec50513          	addi	a0,a0,-1044 # 80009570 <CONSOLE_STATUS+0x560>
    8000598c:	00000097          	auipc	ra,0x0
    80005990:	8f8080e7          	jalr	-1800(ra) # 80005284 <_Z11printStringPKc>
    80005994:	00000613          	li	a2,0
    80005998:	00a00593          	li	a1,10
    8000599c:	0009051b          	sext.w	a0,s2
    800059a0:	00000097          	auipc	ra,0x0
    800059a4:	a7c080e7          	jalr	-1412(ra) # 8000541c <_Z8printIntiii>
    800059a8:	00004517          	auipc	a0,0x4
    800059ac:	dd050513          	addi	a0,a0,-560 # 80009778 <CONSOLE_STATUS+0x768>
    800059b0:	00000097          	auipc	ra,0x0
    800059b4:	8d4080e7          	jalr	-1836(ra) # 80005284 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800059b8:	00000493          	li	s1,0
    800059bc:	f99ff06f          	j	80005954 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800059c0:	00004517          	auipc	a0,0x4
    800059c4:	bb850513          	addi	a0,a0,-1096 # 80009578 <CONSOLE_STATUS+0x568>
    800059c8:	00000097          	auipc	ra,0x0
    800059cc:	8bc080e7          	jalr	-1860(ra) # 80005284 <_Z11printStringPKc>
    finishedA = true;
    800059d0:	00100793          	li	a5,1
    800059d4:	0000a717          	auipc	a4,0xa
    800059d8:	14f70223          	sb	a5,324(a4) # 8000fb18 <finishedA>
}
    800059dc:	01813083          	ld	ra,24(sp)
    800059e0:	01013403          	ld	s0,16(sp)
    800059e4:	00813483          	ld	s1,8(sp)
    800059e8:	00013903          	ld	s2,0(sp)
    800059ec:	02010113          	addi	sp,sp,32
    800059f0:	00008067          	ret

00000000800059f4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800059f4:	fe010113          	addi	sp,sp,-32
    800059f8:	00113c23          	sd	ra,24(sp)
    800059fc:	00813823          	sd	s0,16(sp)
    80005a00:	00913423          	sd	s1,8(sp)
    80005a04:	01213023          	sd	s2,0(sp)
    80005a08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005a0c:	00000913          	li	s2,0
    80005a10:	0380006f          	j	80005a48 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005a14:	ffffd097          	auipc	ra,0xffffd
    80005a18:	800080e7          	jalr	-2048(ra) # 80002214 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005a1c:	00148493          	addi	s1,s1,1
    80005a20:	000027b7          	lui	a5,0x2
    80005a24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005a28:	0097ee63          	bltu	a5,s1,80005a44 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005a2c:	00000713          	li	a4,0
    80005a30:	000077b7          	lui	a5,0x7
    80005a34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005a38:	fce7eee3          	bltu	a5,a4,80005a14 <_Z11workerBodyBPv+0x20>
    80005a3c:	00170713          	addi	a4,a4,1
    80005a40:	ff1ff06f          	j	80005a30 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005a44:	00190913          	addi	s2,s2,1
    80005a48:	00f00793          	li	a5,15
    80005a4c:	0527e063          	bltu	a5,s2,80005a8c <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	b3850513          	addi	a0,a0,-1224 # 80009588 <CONSOLE_STATUS+0x578>
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	82c080e7          	jalr	-2004(ra) # 80005284 <_Z11printStringPKc>
    80005a60:	00000613          	li	a2,0
    80005a64:	00a00593          	li	a1,10
    80005a68:	0009051b          	sext.w	a0,s2
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	9b0080e7          	jalr	-1616(ra) # 8000541c <_Z8printIntiii>
    80005a74:	00004517          	auipc	a0,0x4
    80005a78:	d0450513          	addi	a0,a0,-764 # 80009778 <CONSOLE_STATUS+0x768>
    80005a7c:	00000097          	auipc	ra,0x0
    80005a80:	808080e7          	jalr	-2040(ra) # 80005284 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005a84:	00000493          	li	s1,0
    80005a88:	f99ff06f          	j	80005a20 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005a8c:	ffffc097          	auipc	ra,0xffffc
    80005a90:	788080e7          	jalr	1928(ra) # 80002214 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80005a94:	00004517          	auipc	a0,0x4
    80005a98:	afc50513          	addi	a0,a0,-1284 # 80009590 <CONSOLE_STATUS+0x580>
    80005a9c:	fffff097          	auipc	ra,0xfffff
    80005aa0:	7e8080e7          	jalr	2024(ra) # 80005284 <_Z11printStringPKc>
    finishedB = true;
    80005aa4:	00100793          	li	a5,1
    80005aa8:	0000a717          	auipc	a4,0xa
    80005aac:	06f708a3          	sb	a5,113(a4) # 8000fb19 <finishedB>
}
    80005ab0:	01813083          	ld	ra,24(sp)
    80005ab4:	01013403          	ld	s0,16(sp)
    80005ab8:	00813483          	ld	s1,8(sp)
    80005abc:	00013903          	ld	s2,0(sp)
    80005ac0:	02010113          	addi	sp,sp,32
    80005ac4:	00008067          	ret

0000000080005ac8 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80005ac8:	fe010113          	addi	sp,sp,-32
    80005acc:	00113c23          	sd	ra,24(sp)
    80005ad0:	00813823          	sd	s0,16(sp)
    80005ad4:	00913423          	sd	s1,8(sp)
    80005ad8:	01213023          	sd	s2,0(sp)
    80005adc:	02010413          	addi	s0,sp,32
    80005ae0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005ae4:	00100793          	li	a5,1
    80005ae8:	02a7f863          	bgeu	a5,a0,80005b18 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005aec:	00a00793          	li	a5,10
    80005af0:	02f577b3          	remu	a5,a0,a5
    80005af4:	02078e63          	beqz	a5,80005b30 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005af8:	fff48513          	addi	a0,s1,-1
    80005afc:	00000097          	auipc	ra,0x0
    80005b00:	fcc080e7          	jalr	-52(ra) # 80005ac8 <_Z9fibonaccim>
    80005b04:	00050913          	mv	s2,a0
    80005b08:	ffe48513          	addi	a0,s1,-2
    80005b0c:	00000097          	auipc	ra,0x0
    80005b10:	fbc080e7          	jalr	-68(ra) # 80005ac8 <_Z9fibonaccim>
    80005b14:	00a90533          	add	a0,s2,a0
}
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	00813483          	ld	s1,8(sp)
    80005b24:	00013903          	ld	s2,0(sp)
    80005b28:	02010113          	addi	sp,sp,32
    80005b2c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	6e4080e7          	jalr	1764(ra) # 80002214 <_Z15thread_dispatchv>
    80005b38:	fc1ff06f          	j	80005af8 <_Z9fibonaccim+0x30>

0000000080005b3c <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005b3c:	fe010113          	addi	sp,sp,-32
    80005b40:	00113c23          	sd	ra,24(sp)
    80005b44:	00813823          	sd	s0,16(sp)
    80005b48:	00913423          	sd	s1,8(sp)
    80005b4c:	01213023          	sd	s2,0(sp)
    80005b50:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005b54:	00000493          	li	s1,0
    80005b58:	0400006f          	j	80005b98 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005b5c:	00004517          	auipc	a0,0x4
    80005b60:	a4450513          	addi	a0,a0,-1468 # 800095a0 <CONSOLE_STATUS+0x590>
    80005b64:	fffff097          	auipc	ra,0xfffff
    80005b68:	720080e7          	jalr	1824(ra) # 80005284 <_Z11printStringPKc>
    80005b6c:	00000613          	li	a2,0
    80005b70:	00a00593          	li	a1,10
    80005b74:	00048513          	mv	a0,s1
    80005b78:	00000097          	auipc	ra,0x0
    80005b7c:	8a4080e7          	jalr	-1884(ra) # 8000541c <_Z8printIntiii>
    80005b80:	00004517          	auipc	a0,0x4
    80005b84:	bf850513          	addi	a0,a0,-1032 # 80009778 <CONSOLE_STATUS+0x768>
    80005b88:	fffff097          	auipc	ra,0xfffff
    80005b8c:	6fc080e7          	jalr	1788(ra) # 80005284 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005b90:	0014849b          	addiw	s1,s1,1
    80005b94:	0ff4f493          	andi	s1,s1,255
    80005b98:	00200793          	li	a5,2
    80005b9c:	fc97f0e3          	bgeu	a5,s1,80005b5c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005ba0:	00004517          	auipc	a0,0x4
    80005ba4:	a0850513          	addi	a0,a0,-1528 # 800095a8 <CONSOLE_STATUS+0x598>
    80005ba8:	fffff097          	auipc	ra,0xfffff
    80005bac:	6dc080e7          	jalr	1756(ra) # 80005284 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005bb0:	00700313          	li	t1,7
    thread_dispatch();
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	660080e7          	jalr	1632(ra) # 80002214 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005bbc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005bc0:	00004517          	auipc	a0,0x4
    80005bc4:	9f850513          	addi	a0,a0,-1544 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80005bc8:	fffff097          	auipc	ra,0xfffff
    80005bcc:	6bc080e7          	jalr	1724(ra) # 80005284 <_Z11printStringPKc>
    80005bd0:	00000613          	li	a2,0
    80005bd4:	00a00593          	li	a1,10
    80005bd8:	0009051b          	sext.w	a0,s2
    80005bdc:	00000097          	auipc	ra,0x0
    80005be0:	840080e7          	jalr	-1984(ra) # 8000541c <_Z8printIntiii>
    80005be4:	00004517          	auipc	a0,0x4
    80005be8:	b9450513          	addi	a0,a0,-1132 # 80009778 <CONSOLE_STATUS+0x768>
    80005bec:	fffff097          	auipc	ra,0xfffff
    80005bf0:	698080e7          	jalr	1688(ra) # 80005284 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005bf4:	00c00513          	li	a0,12
    80005bf8:	00000097          	auipc	ra,0x0
    80005bfc:	ed0080e7          	jalr	-304(ra) # 80005ac8 <_Z9fibonaccim>
    80005c00:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005c04:	00004517          	auipc	a0,0x4
    80005c08:	9bc50513          	addi	a0,a0,-1604 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005c0c:	fffff097          	auipc	ra,0xfffff
    80005c10:	678080e7          	jalr	1656(ra) # 80005284 <_Z11printStringPKc>
    80005c14:	00000613          	li	a2,0
    80005c18:	00a00593          	li	a1,10
    80005c1c:	0009051b          	sext.w	a0,s2
    80005c20:	fffff097          	auipc	ra,0xfffff
    80005c24:	7fc080e7          	jalr	2044(ra) # 8000541c <_Z8printIntiii>
    80005c28:	00004517          	auipc	a0,0x4
    80005c2c:	b5050513          	addi	a0,a0,-1200 # 80009778 <CONSOLE_STATUS+0x768>
    80005c30:	fffff097          	auipc	ra,0xfffff
    80005c34:	654080e7          	jalr	1620(ra) # 80005284 <_Z11printStringPKc>
    80005c38:	0400006f          	j	80005c78 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005c3c:	00004517          	auipc	a0,0x4
    80005c40:	96450513          	addi	a0,a0,-1692 # 800095a0 <CONSOLE_STATUS+0x590>
    80005c44:	fffff097          	auipc	ra,0xfffff
    80005c48:	640080e7          	jalr	1600(ra) # 80005284 <_Z11printStringPKc>
    80005c4c:	00000613          	li	a2,0
    80005c50:	00a00593          	li	a1,10
    80005c54:	00048513          	mv	a0,s1
    80005c58:	fffff097          	auipc	ra,0xfffff
    80005c5c:	7c4080e7          	jalr	1988(ra) # 8000541c <_Z8printIntiii>
    80005c60:	00004517          	auipc	a0,0x4
    80005c64:	b1850513          	addi	a0,a0,-1256 # 80009778 <CONSOLE_STATUS+0x768>
    80005c68:	fffff097          	auipc	ra,0xfffff
    80005c6c:	61c080e7          	jalr	1564(ra) # 80005284 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005c70:	0014849b          	addiw	s1,s1,1
    80005c74:	0ff4f493          	andi	s1,s1,255
    80005c78:	00500793          	li	a5,5
    80005c7c:	fc97f0e3          	bgeu	a5,s1,80005c3c <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80005c80:	ffffc097          	auipc	ra,0xffffc
    80005c84:	594080e7          	jalr	1428(ra) # 80002214 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80005c88:	00004517          	auipc	a0,0x4
    80005c8c:	8f050513          	addi	a0,a0,-1808 # 80009578 <CONSOLE_STATUS+0x568>
    80005c90:	fffff097          	auipc	ra,0xfffff
    80005c94:	5f4080e7          	jalr	1524(ra) # 80005284 <_Z11printStringPKc>
    finishedC = true;
    80005c98:	00100793          	li	a5,1
    80005c9c:	0000a717          	auipc	a4,0xa
    80005ca0:	e6f70f23          	sb	a5,-386(a4) # 8000fb1a <finishedC>
}
    80005ca4:	01813083          	ld	ra,24(sp)
    80005ca8:	01013403          	ld	s0,16(sp)
    80005cac:	00813483          	ld	s1,8(sp)
    80005cb0:	00013903          	ld	s2,0(sp)
    80005cb4:	02010113          	addi	sp,sp,32
    80005cb8:	00008067          	ret

0000000080005cbc <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005cbc:	fe010113          	addi	sp,sp,-32
    80005cc0:	00113c23          	sd	ra,24(sp)
    80005cc4:	00813823          	sd	s0,16(sp)
    80005cc8:	00913423          	sd	s1,8(sp)
    80005ccc:	01213023          	sd	s2,0(sp)
    80005cd0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005cd4:	00a00493          	li	s1,10
    80005cd8:	0400006f          	j	80005d18 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005cdc:	00004517          	auipc	a0,0x4
    80005ce0:	8f450513          	addi	a0,a0,-1804 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005ce4:	fffff097          	auipc	ra,0xfffff
    80005ce8:	5a0080e7          	jalr	1440(ra) # 80005284 <_Z11printStringPKc>
    80005cec:	00000613          	li	a2,0
    80005cf0:	00a00593          	li	a1,10
    80005cf4:	00048513          	mv	a0,s1
    80005cf8:	fffff097          	auipc	ra,0xfffff
    80005cfc:	724080e7          	jalr	1828(ra) # 8000541c <_Z8printIntiii>
    80005d00:	00004517          	auipc	a0,0x4
    80005d04:	a7850513          	addi	a0,a0,-1416 # 80009778 <CONSOLE_STATUS+0x768>
    80005d08:	fffff097          	auipc	ra,0xfffff
    80005d0c:	57c080e7          	jalr	1404(ra) # 80005284 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005d10:	0014849b          	addiw	s1,s1,1
    80005d14:	0ff4f493          	andi	s1,s1,255
    80005d18:	00c00793          	li	a5,12
    80005d1c:	fc97f0e3          	bgeu	a5,s1,80005cdc <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005d20:	00004517          	auipc	a0,0x4
    80005d24:	8b850513          	addi	a0,a0,-1864 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005d28:	fffff097          	auipc	ra,0xfffff
    80005d2c:	55c080e7          	jalr	1372(ra) # 80005284 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005d30:	00500313          	li	t1,5
    thread_dispatch();
    80005d34:	ffffc097          	auipc	ra,0xffffc
    80005d38:	4e0080e7          	jalr	1248(ra) # 80002214 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005d3c:	01000513          	li	a0,16
    80005d40:	00000097          	auipc	ra,0x0
    80005d44:	d88080e7          	jalr	-632(ra) # 80005ac8 <_Z9fibonaccim>
    80005d48:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005d4c:	00004517          	auipc	a0,0x4
    80005d50:	89c50513          	addi	a0,a0,-1892 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	530080e7          	jalr	1328(ra) # 80005284 <_Z11printStringPKc>
    80005d5c:	00000613          	li	a2,0
    80005d60:	00a00593          	li	a1,10
    80005d64:	0009051b          	sext.w	a0,s2
    80005d68:	fffff097          	auipc	ra,0xfffff
    80005d6c:	6b4080e7          	jalr	1716(ra) # 8000541c <_Z8printIntiii>
    80005d70:	00004517          	auipc	a0,0x4
    80005d74:	a0850513          	addi	a0,a0,-1528 # 80009778 <CONSOLE_STATUS+0x768>
    80005d78:	fffff097          	auipc	ra,0xfffff
    80005d7c:	50c080e7          	jalr	1292(ra) # 80005284 <_Z11printStringPKc>
    80005d80:	0400006f          	j	80005dc0 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005d84:	00004517          	auipc	a0,0x4
    80005d88:	84c50513          	addi	a0,a0,-1972 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005d8c:	fffff097          	auipc	ra,0xfffff
    80005d90:	4f8080e7          	jalr	1272(ra) # 80005284 <_Z11printStringPKc>
    80005d94:	00000613          	li	a2,0
    80005d98:	00a00593          	li	a1,10
    80005d9c:	00048513          	mv	a0,s1
    80005da0:	fffff097          	auipc	ra,0xfffff
    80005da4:	67c080e7          	jalr	1660(ra) # 8000541c <_Z8printIntiii>
    80005da8:	00004517          	auipc	a0,0x4
    80005dac:	9d050513          	addi	a0,a0,-1584 # 80009778 <CONSOLE_STATUS+0x768>
    80005db0:	fffff097          	auipc	ra,0xfffff
    80005db4:	4d4080e7          	jalr	1236(ra) # 80005284 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005db8:	0014849b          	addiw	s1,s1,1
    80005dbc:	0ff4f493          	andi	s1,s1,255
    80005dc0:	00f00793          	li	a5,15
    80005dc4:	fc97f0e3          	bgeu	a5,s1,80005d84 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80005dc8:	ffffc097          	auipc	ra,0xffffc
    80005dcc:	44c080e7          	jalr	1100(ra) # 80002214 <_Z15thread_dispatchv>
    printString("D finished!\n");
    80005dd0:	00004517          	auipc	a0,0x4
    80005dd4:	82850513          	addi	a0,a0,-2008 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005dd8:	fffff097          	auipc	ra,0xfffff
    80005ddc:	4ac080e7          	jalr	1196(ra) # 80005284 <_Z11printStringPKc>
    finishedD = true;
    80005de0:	00100793          	li	a5,1
    80005de4:	0000a717          	auipc	a4,0xa
    80005de8:	d2f70ba3          	sb	a5,-713(a4) # 8000fb1b <finishedD>
}
    80005dec:	01813083          	ld	ra,24(sp)
    80005df0:	01013403          	ld	s0,16(sp)
    80005df4:	00813483          	ld	s1,8(sp)
    80005df8:	00013903          	ld	s2,0(sp)
    80005dfc:	02010113          	addi	sp,sp,32
    80005e00:	00008067          	ret

0000000080005e04 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005e04:	fc010113          	addi	sp,sp,-64
    80005e08:	02113c23          	sd	ra,56(sp)
    80005e0c:	02813823          	sd	s0,48(sp)
    80005e10:	02913423          	sd	s1,40(sp)
    80005e14:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005e18:	00000613          	li	a2,0
    80005e1c:	00000597          	auipc	a1,0x0
    80005e20:	b0c58593          	addi	a1,a1,-1268 # 80005928 <_Z11workerBodyAPv>
    80005e24:	fc040513          	addi	a0,s0,-64
    80005e28:	ffffc097          	auipc	ra,0xffffc
    80005e2c:	36c080e7          	jalr	876(ra) # 80002194 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005e30:	00003517          	auipc	a0,0x3
    80005e34:	7d850513          	addi	a0,a0,2008 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005e38:	fffff097          	auipc	ra,0xfffff
    80005e3c:	44c080e7          	jalr	1100(ra) # 80005284 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005e40:	00000613          	li	a2,0
    80005e44:	00000597          	auipc	a1,0x0
    80005e48:	bb058593          	addi	a1,a1,-1104 # 800059f4 <_Z11workerBodyBPv>
    80005e4c:	fc840513          	addi	a0,s0,-56
    80005e50:	ffffc097          	auipc	ra,0xffffc
    80005e54:	344080e7          	jalr	836(ra) # 80002194 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005e58:	00003517          	auipc	a0,0x3
    80005e5c:	7c850513          	addi	a0,a0,1992 # 80009620 <CONSOLE_STATUS+0x610>
    80005e60:	fffff097          	auipc	ra,0xfffff
    80005e64:	424080e7          	jalr	1060(ra) # 80005284 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005e68:	00000613          	li	a2,0
    80005e6c:	00000597          	auipc	a1,0x0
    80005e70:	cd058593          	addi	a1,a1,-816 # 80005b3c <_Z11workerBodyCPv>
    80005e74:	fd040513          	addi	a0,s0,-48
    80005e78:	ffffc097          	auipc	ra,0xffffc
    80005e7c:	31c080e7          	jalr	796(ra) # 80002194 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005e80:	00003517          	auipc	a0,0x3
    80005e84:	7b850513          	addi	a0,a0,1976 # 80009638 <CONSOLE_STATUS+0x628>
    80005e88:	fffff097          	auipc	ra,0xfffff
    80005e8c:	3fc080e7          	jalr	1020(ra) # 80005284 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005e90:	00000613          	li	a2,0
    80005e94:	00000597          	auipc	a1,0x0
    80005e98:	e2858593          	addi	a1,a1,-472 # 80005cbc <_Z11workerBodyDPv>
    80005e9c:	fd840513          	addi	a0,s0,-40
    80005ea0:	ffffc097          	auipc	ra,0xffffc
    80005ea4:	2f4080e7          	jalr	756(ra) # 80002194 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005ea8:	00003517          	auipc	a0,0x3
    80005eac:	7a850513          	addi	a0,a0,1960 # 80009650 <CONSOLE_STATUS+0x640>
    80005eb0:	fffff097          	auipc	ra,0xfffff
    80005eb4:	3d4080e7          	jalr	980(ra) # 80005284 <_Z11printStringPKc>
    80005eb8:	00c0006f          	j	80005ec4 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005ebc:	ffffc097          	auipc	ra,0xffffc
    80005ec0:	358080e7          	jalr	856(ra) # 80002214 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005ec4:	0000a797          	auipc	a5,0xa
    80005ec8:	c547c783          	lbu	a5,-940(a5) # 8000fb18 <finishedA>
    80005ecc:	fe0788e3          	beqz	a5,80005ebc <_Z18Threads_C_API_testv+0xb8>
    80005ed0:	0000a797          	auipc	a5,0xa
    80005ed4:	c497c783          	lbu	a5,-951(a5) # 8000fb19 <finishedB>
    80005ed8:	fe0782e3          	beqz	a5,80005ebc <_Z18Threads_C_API_testv+0xb8>
    80005edc:	0000a797          	auipc	a5,0xa
    80005ee0:	c3e7c783          	lbu	a5,-962(a5) # 8000fb1a <finishedC>
    80005ee4:	fc078ce3          	beqz	a5,80005ebc <_Z18Threads_C_API_testv+0xb8>
    80005ee8:	0000a797          	auipc	a5,0xa
    80005eec:	c337c783          	lbu	a5,-973(a5) # 8000fb1b <finishedD>
    80005ef0:	fc0786e3          	beqz	a5,80005ebc <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80005ef4:	fc040493          	addi	s1,s0,-64
    80005ef8:	0080006f          	j	80005f00 <_Z18Threads_C_API_testv+0xfc>
    80005efc:	00848493          	addi	s1,s1,8
    80005f00:	fe040793          	addi	a5,s0,-32
    80005f04:	00f48c63          	beq	s1,a5,80005f1c <_Z18Threads_C_API_testv+0x118>
    80005f08:	0004b503          	ld	a0,0(s1)
    80005f0c:	fe0508e3          	beqz	a0,80005efc <_Z18Threads_C_API_testv+0xf8>
    80005f10:	ffffc097          	auipc	ra,0xffffc
    80005f14:	580080e7          	jalr	1408(ra) # 80002490 <_ZN7_threaddlEPv>
    80005f18:	fe5ff06f          	j	80005efc <_Z18Threads_C_API_testv+0xf8>
}
    80005f1c:	03813083          	ld	ra,56(sp)
    80005f20:	03013403          	ld	s0,48(sp)
    80005f24:	02813483          	ld	s1,40(sp)
    80005f28:	04010113          	addi	sp,sp,64
    80005f2c:	00008067          	ret

0000000080005f30 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80005f30:	ff010113          	addi	sp,sp,-16
    80005f34:	00113423          	sd	ra,8(sp)
    80005f38:	00813023          	sd	s0,0(sp)
    80005f3c:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005f40:	00000097          	auipc	ra,0x0
    80005f44:	ec4080e7          	jalr	-316(ra) # 80005e04 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005f48:	00813083          	ld	ra,8(sp)
    80005f4c:	00013403          	ld	s0,0(sp)
    80005f50:	01010113          	addi	sp,sp,16
    80005f54:	00008067          	ret

0000000080005f58 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	01213023          	sd	s2,0(sp)
    80005f6c:	02010413          	addi	s0,sp,32
    80005f70:	00050493          	mv	s1,a0
    80005f74:	00058913          	mv	s2,a1
    80005f78:	0015879b          	addiw	a5,a1,1
    80005f7c:	0007851b          	sext.w	a0,a5
    80005f80:	00f4a023          	sw	a5,0(s1)
    80005f84:	0004a823          	sw	zero,16(s1)
    80005f88:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f8c:	00251513          	slli	a0,a0,0x2
    80005f90:	ffffc097          	auipc	ra,0xffffc
    80005f94:	1a8080e7          	jalr	424(ra) # 80002138 <_Z9mem_allocm>
    80005f98:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005f9c:	00000593          	li	a1,0
    80005fa0:	02048513          	addi	a0,s1,32
    80005fa4:	ffffc097          	auipc	ra,0xffffc
    80005fa8:	2b8080e7          	jalr	696(ra) # 8000225c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005fac:	00090593          	mv	a1,s2
    80005fb0:	01848513          	addi	a0,s1,24
    80005fb4:	ffffc097          	auipc	ra,0xffffc
    80005fb8:	2a8080e7          	jalr	680(ra) # 8000225c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005fbc:	00100593          	li	a1,1
    80005fc0:	02848513          	addi	a0,s1,40
    80005fc4:	ffffc097          	auipc	ra,0xffffc
    80005fc8:	298080e7          	jalr	664(ra) # 8000225c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005fcc:	00100593          	li	a1,1
    80005fd0:	03048513          	addi	a0,s1,48
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	288080e7          	jalr	648(ra) # 8000225c <_Z8sem_openPP4_semj>
}
    80005fdc:	01813083          	ld	ra,24(sp)
    80005fe0:	01013403          	ld	s0,16(sp)
    80005fe4:	00813483          	ld	s1,8(sp)
    80005fe8:	00013903          	ld	s2,0(sp)
    80005fec:	02010113          	addi	sp,sp,32
    80005ff0:	00008067          	ret

0000000080005ff4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005ff4:	fe010113          	addi	sp,sp,-32
    80005ff8:	00113c23          	sd	ra,24(sp)
    80005ffc:	00813823          	sd	s0,16(sp)
    80006000:	00913423          	sd	s1,8(sp)
    80006004:	01213023          	sd	s2,0(sp)
    80006008:	02010413          	addi	s0,sp,32
    8000600c:	00050493          	mv	s1,a0
    80006010:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006014:	01853503          	ld	a0,24(a0)
    80006018:	ffffc097          	auipc	ra,0xffffc
    8000601c:	2a8080e7          	jalr	680(ra) # 800022c0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006020:	0304b503          	ld	a0,48(s1)
    80006024:	ffffc097          	auipc	ra,0xffffc
    80006028:	29c080e7          	jalr	668(ra) # 800022c0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000602c:	0084b783          	ld	a5,8(s1)
    80006030:	0144a703          	lw	a4,20(s1)
    80006034:	00271713          	slli	a4,a4,0x2
    80006038:	00e787b3          	add	a5,a5,a4
    8000603c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006040:	0144a783          	lw	a5,20(s1)
    80006044:	0017879b          	addiw	a5,a5,1
    80006048:	0004a703          	lw	a4,0(s1)
    8000604c:	02e7e7bb          	remw	a5,a5,a4
    80006050:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006054:	0304b503          	ld	a0,48(s1)
    80006058:	ffffc097          	auipc	ra,0xffffc
    8000605c:	294080e7          	jalr	660(ra) # 800022ec <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006060:	0204b503          	ld	a0,32(s1)
    80006064:	ffffc097          	auipc	ra,0xffffc
    80006068:	288080e7          	jalr	648(ra) # 800022ec <_Z10sem_signalP4_sem>

}
    8000606c:	01813083          	ld	ra,24(sp)
    80006070:	01013403          	ld	s0,16(sp)
    80006074:	00813483          	ld	s1,8(sp)
    80006078:	00013903          	ld	s2,0(sp)
    8000607c:	02010113          	addi	sp,sp,32
    80006080:	00008067          	ret

0000000080006084 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006084:	fe010113          	addi	sp,sp,-32
    80006088:	00113c23          	sd	ra,24(sp)
    8000608c:	00813823          	sd	s0,16(sp)
    80006090:	00913423          	sd	s1,8(sp)
    80006094:	01213023          	sd	s2,0(sp)
    80006098:	02010413          	addi	s0,sp,32
    8000609c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800060a0:	02053503          	ld	a0,32(a0)
    800060a4:	ffffc097          	auipc	ra,0xffffc
    800060a8:	21c080e7          	jalr	540(ra) # 800022c0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800060ac:	0284b503          	ld	a0,40(s1)
    800060b0:	ffffc097          	auipc	ra,0xffffc
    800060b4:	210080e7          	jalr	528(ra) # 800022c0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800060b8:	0084b703          	ld	a4,8(s1)
    800060bc:	0104a783          	lw	a5,16(s1)
    800060c0:	00279693          	slli	a3,a5,0x2
    800060c4:	00d70733          	add	a4,a4,a3
    800060c8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060cc:	0017879b          	addiw	a5,a5,1
    800060d0:	0004a703          	lw	a4,0(s1)
    800060d4:	02e7e7bb          	remw	a5,a5,a4
    800060d8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800060dc:	0284b503          	ld	a0,40(s1)
    800060e0:	ffffc097          	auipc	ra,0xffffc
    800060e4:	20c080e7          	jalr	524(ra) # 800022ec <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800060e8:	0184b503          	ld	a0,24(s1)
    800060ec:	ffffc097          	auipc	ra,0xffffc
    800060f0:	200080e7          	jalr	512(ra) # 800022ec <_Z10sem_signalP4_sem>

    return ret;
}
    800060f4:	00090513          	mv	a0,s2
    800060f8:	01813083          	ld	ra,24(sp)
    800060fc:	01013403          	ld	s0,16(sp)
    80006100:	00813483          	ld	s1,8(sp)
    80006104:	00013903          	ld	s2,0(sp)
    80006108:	02010113          	addi	sp,sp,32
    8000610c:	00008067          	ret

0000000080006110 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006110:	fe010113          	addi	sp,sp,-32
    80006114:	00113c23          	sd	ra,24(sp)
    80006118:	00813823          	sd	s0,16(sp)
    8000611c:	00913423          	sd	s1,8(sp)
    80006120:	01213023          	sd	s2,0(sp)
    80006124:	02010413          	addi	s0,sp,32
    80006128:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000612c:	02853503          	ld	a0,40(a0)
    80006130:	ffffc097          	auipc	ra,0xffffc
    80006134:	190080e7          	jalr	400(ra) # 800022c0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006138:	0304b503          	ld	a0,48(s1)
    8000613c:	ffffc097          	auipc	ra,0xffffc
    80006140:	184080e7          	jalr	388(ra) # 800022c0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006144:	0144a783          	lw	a5,20(s1)
    80006148:	0104a903          	lw	s2,16(s1)
    8000614c:	0327ce63          	blt	a5,s2,80006188 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006150:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006154:	0304b503          	ld	a0,48(s1)
    80006158:	ffffc097          	auipc	ra,0xffffc
    8000615c:	194080e7          	jalr	404(ra) # 800022ec <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006160:	0284b503          	ld	a0,40(s1)
    80006164:	ffffc097          	auipc	ra,0xffffc
    80006168:	188080e7          	jalr	392(ra) # 800022ec <_Z10sem_signalP4_sem>

    return ret;
    8000616c:	00090513          	mv	a0,s2
    80006170:	01813083          	ld	ra,24(sp)
    80006174:	01013403          	ld	s0,16(sp)
    80006178:	00813483          	ld	s1,8(sp)
    8000617c:	00013903          	ld	s2,0(sp)
    80006180:	02010113          	addi	sp,sp,32
    80006184:	00008067          	ret
        ret = cap - head + tail;
    80006188:	0004a703          	lw	a4,0(s1)
    8000618c:	4127093b          	subw	s2,a4,s2
    80006190:	00f9093b          	addw	s2,s2,a5
    80006194:	fc1ff06f          	j	80006154 <_ZN6Buffer6getCntEv+0x44>

0000000080006198 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006198:	fe010113          	addi	sp,sp,-32
    8000619c:	00113c23          	sd	ra,24(sp)
    800061a0:	00813823          	sd	s0,16(sp)
    800061a4:	00913423          	sd	s1,8(sp)
    800061a8:	02010413          	addi	s0,sp,32
    800061ac:	00050493          	mv	s1,a0
    putc('\n');
    800061b0:	00a00513          	li	a0,10
    800061b4:	ffffc097          	auipc	ra,0xffffc
    800061b8:	264080e7          	jalr	612(ra) # 80002418 <_Z4putcc>
    printString("Buffer deleted!\n");
    800061bc:	00003517          	auipc	a0,0x3
    800061c0:	39c50513          	addi	a0,a0,924 # 80009558 <CONSOLE_STATUS+0x548>
    800061c4:	fffff097          	auipc	ra,0xfffff
    800061c8:	0c0080e7          	jalr	192(ra) # 80005284 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800061cc:	00048513          	mv	a0,s1
    800061d0:	00000097          	auipc	ra,0x0
    800061d4:	f40080e7          	jalr	-192(ra) # 80006110 <_ZN6Buffer6getCntEv>
    800061d8:	02a05c63          	blez	a0,80006210 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800061dc:	0084b783          	ld	a5,8(s1)
    800061e0:	0104a703          	lw	a4,16(s1)
    800061e4:	00271713          	slli	a4,a4,0x2
    800061e8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800061ec:	0007c503          	lbu	a0,0(a5)
    800061f0:	ffffc097          	auipc	ra,0xffffc
    800061f4:	228080e7          	jalr	552(ra) # 80002418 <_Z4putcc>
        head = (head + 1) % cap;
    800061f8:	0104a783          	lw	a5,16(s1)
    800061fc:	0017879b          	addiw	a5,a5,1
    80006200:	0004a703          	lw	a4,0(s1)
    80006204:	02e7e7bb          	remw	a5,a5,a4
    80006208:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000620c:	fc1ff06f          	j	800061cc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006210:	02100513          	li	a0,33
    80006214:	ffffc097          	auipc	ra,0xffffc
    80006218:	204080e7          	jalr	516(ra) # 80002418 <_Z4putcc>
    putc('\n');
    8000621c:	00a00513          	li	a0,10
    80006220:	ffffc097          	auipc	ra,0xffffc
    80006224:	1f8080e7          	jalr	504(ra) # 80002418 <_Z4putcc>
    mem_free(buffer);
    80006228:	0084b503          	ld	a0,8(s1)
    8000622c:	ffffc097          	auipc	ra,0xffffc
    80006230:	f3c080e7          	jalr	-196(ra) # 80002168 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006234:	0204b503          	ld	a0,32(s1)
    80006238:	ffffc097          	auipc	ra,0xffffc
    8000623c:	05c080e7          	jalr	92(ra) # 80002294 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006240:	0184b503          	ld	a0,24(s1)
    80006244:	ffffc097          	auipc	ra,0xffffc
    80006248:	050080e7          	jalr	80(ra) # 80002294 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000624c:	0304b503          	ld	a0,48(s1)
    80006250:	ffffc097          	auipc	ra,0xffffc
    80006254:	044080e7          	jalr	68(ra) # 80002294 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006258:	0284b503          	ld	a0,40(s1)
    8000625c:	ffffc097          	auipc	ra,0xffffc
    80006260:	038080e7          	jalr	56(ra) # 80002294 <_Z9sem_closeP4_sem>
}
    80006264:	01813083          	ld	ra,24(sp)
    80006268:	01013403          	ld	s0,16(sp)
    8000626c:	00813483          	ld	s1,8(sp)
    80006270:	02010113          	addi	sp,sp,32
    80006274:	00008067          	ret

0000000080006278 <start>:
    80006278:	ff010113          	addi	sp,sp,-16
    8000627c:	00813423          	sd	s0,8(sp)
    80006280:	01010413          	addi	s0,sp,16
    80006284:	300027f3          	csrr	a5,mstatus
    80006288:	ffffe737          	lui	a4,0xffffe
    8000628c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffeda7f>
    80006290:	00e7f7b3          	and	a5,a5,a4
    80006294:	00001737          	lui	a4,0x1
    80006298:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000629c:	00e7e7b3          	or	a5,a5,a4
    800062a0:	30079073          	csrw	mstatus,a5
    800062a4:	00000797          	auipc	a5,0x0
    800062a8:	16078793          	addi	a5,a5,352 # 80006404 <system_main>
    800062ac:	34179073          	csrw	mepc,a5
    800062b0:	00000793          	li	a5,0
    800062b4:	18079073          	csrw	satp,a5
    800062b8:	000107b7          	lui	a5,0x10
    800062bc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800062c0:	30279073          	csrw	medeleg,a5
    800062c4:	30379073          	csrw	mideleg,a5
    800062c8:	104027f3          	csrr	a5,sie
    800062cc:	2227e793          	ori	a5,a5,546
    800062d0:	10479073          	csrw	sie,a5
    800062d4:	fff00793          	li	a5,-1
    800062d8:	00a7d793          	srli	a5,a5,0xa
    800062dc:	3b079073          	csrw	pmpaddr0,a5
    800062e0:	00f00793          	li	a5,15
    800062e4:	3a079073          	csrw	pmpcfg0,a5
    800062e8:	f14027f3          	csrr	a5,mhartid
    800062ec:	0200c737          	lui	a4,0x200c
    800062f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800062f4:	0007869b          	sext.w	a3,a5
    800062f8:	00269713          	slli	a4,a3,0x2
    800062fc:	000f4637          	lui	a2,0xf4
    80006300:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006304:	00d70733          	add	a4,a4,a3
    80006308:	0037979b          	slliw	a5,a5,0x3
    8000630c:	020046b7          	lui	a3,0x2004
    80006310:	00d787b3          	add	a5,a5,a3
    80006314:	00c585b3          	add	a1,a1,a2
    80006318:	00371693          	slli	a3,a4,0x3
    8000631c:	0000a717          	auipc	a4,0xa
    80006320:	80470713          	addi	a4,a4,-2044 # 8000fb20 <timer_scratch>
    80006324:	00b7b023          	sd	a1,0(a5)
    80006328:	00d70733          	add	a4,a4,a3
    8000632c:	00f73c23          	sd	a5,24(a4)
    80006330:	02c73023          	sd	a2,32(a4)
    80006334:	34071073          	csrw	mscratch,a4
    80006338:	00000797          	auipc	a5,0x0
    8000633c:	6e878793          	addi	a5,a5,1768 # 80006a20 <timervec>
    80006340:	30579073          	csrw	mtvec,a5
    80006344:	300027f3          	csrr	a5,mstatus
    80006348:	0087e793          	ori	a5,a5,8
    8000634c:	30079073          	csrw	mstatus,a5
    80006350:	304027f3          	csrr	a5,mie
    80006354:	0807e793          	ori	a5,a5,128
    80006358:	30479073          	csrw	mie,a5
    8000635c:	f14027f3          	csrr	a5,mhartid
    80006360:	0007879b          	sext.w	a5,a5
    80006364:	00078213          	mv	tp,a5
    80006368:	30200073          	mret
    8000636c:	00813403          	ld	s0,8(sp)
    80006370:	01010113          	addi	sp,sp,16
    80006374:	00008067          	ret

0000000080006378 <timerinit>:
    80006378:	ff010113          	addi	sp,sp,-16
    8000637c:	00813423          	sd	s0,8(sp)
    80006380:	01010413          	addi	s0,sp,16
    80006384:	f14027f3          	csrr	a5,mhartid
    80006388:	0200c737          	lui	a4,0x200c
    8000638c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006390:	0007869b          	sext.w	a3,a5
    80006394:	00269713          	slli	a4,a3,0x2
    80006398:	000f4637          	lui	a2,0xf4
    8000639c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063a0:	00d70733          	add	a4,a4,a3
    800063a4:	0037979b          	slliw	a5,a5,0x3
    800063a8:	020046b7          	lui	a3,0x2004
    800063ac:	00d787b3          	add	a5,a5,a3
    800063b0:	00c585b3          	add	a1,a1,a2
    800063b4:	00371693          	slli	a3,a4,0x3
    800063b8:	00009717          	auipc	a4,0x9
    800063bc:	76870713          	addi	a4,a4,1896 # 8000fb20 <timer_scratch>
    800063c0:	00b7b023          	sd	a1,0(a5)
    800063c4:	00d70733          	add	a4,a4,a3
    800063c8:	00f73c23          	sd	a5,24(a4)
    800063cc:	02c73023          	sd	a2,32(a4)
    800063d0:	34071073          	csrw	mscratch,a4
    800063d4:	00000797          	auipc	a5,0x0
    800063d8:	64c78793          	addi	a5,a5,1612 # 80006a20 <timervec>
    800063dc:	30579073          	csrw	mtvec,a5
    800063e0:	300027f3          	csrr	a5,mstatus
    800063e4:	0087e793          	ori	a5,a5,8
    800063e8:	30079073          	csrw	mstatus,a5
    800063ec:	304027f3          	csrr	a5,mie
    800063f0:	0807e793          	ori	a5,a5,128
    800063f4:	30479073          	csrw	mie,a5
    800063f8:	00813403          	ld	s0,8(sp)
    800063fc:	01010113          	addi	sp,sp,16
    80006400:	00008067          	ret

0000000080006404 <system_main>:
    80006404:	fe010113          	addi	sp,sp,-32
    80006408:	00813823          	sd	s0,16(sp)
    8000640c:	00913423          	sd	s1,8(sp)
    80006410:	00113c23          	sd	ra,24(sp)
    80006414:	02010413          	addi	s0,sp,32
    80006418:	00000097          	auipc	ra,0x0
    8000641c:	0c4080e7          	jalr	196(ra) # 800064dc <cpuid>
    80006420:	00005497          	auipc	s1,0x5
    80006424:	61048493          	addi	s1,s1,1552 # 8000ba30 <started>
    80006428:	02050263          	beqz	a0,8000644c <system_main+0x48>
    8000642c:	0004a783          	lw	a5,0(s1)
    80006430:	0007879b          	sext.w	a5,a5
    80006434:	fe078ce3          	beqz	a5,8000642c <system_main+0x28>
    80006438:	0ff0000f          	fence
    8000643c:	00003517          	auipc	a0,0x3
    80006440:	25c50513          	addi	a0,a0,604 # 80009698 <CONSOLE_STATUS+0x688>
    80006444:	00001097          	auipc	ra,0x1
    80006448:	a78080e7          	jalr	-1416(ra) # 80006ebc <panic>
    8000644c:	00001097          	auipc	ra,0x1
    80006450:	9cc080e7          	jalr	-1588(ra) # 80006e18 <consoleinit>
    80006454:	00001097          	auipc	ra,0x1
    80006458:	158080e7          	jalr	344(ra) # 800075ac <printfinit>
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	31c50513          	addi	a0,a0,796 # 80009778 <CONSOLE_STATUS+0x768>
    80006464:	00001097          	auipc	ra,0x1
    80006468:	ab4080e7          	jalr	-1356(ra) # 80006f18 <__printf>
    8000646c:	00003517          	auipc	a0,0x3
    80006470:	1fc50513          	addi	a0,a0,508 # 80009668 <CONSOLE_STATUS+0x658>
    80006474:	00001097          	auipc	ra,0x1
    80006478:	aa4080e7          	jalr	-1372(ra) # 80006f18 <__printf>
    8000647c:	00003517          	auipc	a0,0x3
    80006480:	2fc50513          	addi	a0,a0,764 # 80009778 <CONSOLE_STATUS+0x768>
    80006484:	00001097          	auipc	ra,0x1
    80006488:	a94080e7          	jalr	-1388(ra) # 80006f18 <__printf>
    8000648c:	00001097          	auipc	ra,0x1
    80006490:	4ac080e7          	jalr	1196(ra) # 80007938 <kinit>
    80006494:	00000097          	auipc	ra,0x0
    80006498:	148080e7          	jalr	328(ra) # 800065dc <trapinit>
    8000649c:	00000097          	auipc	ra,0x0
    800064a0:	16c080e7          	jalr	364(ra) # 80006608 <trapinithart>
    800064a4:	00000097          	auipc	ra,0x0
    800064a8:	5bc080e7          	jalr	1468(ra) # 80006a60 <plicinit>
    800064ac:	00000097          	auipc	ra,0x0
    800064b0:	5dc080e7          	jalr	1500(ra) # 80006a88 <plicinithart>
    800064b4:	00000097          	auipc	ra,0x0
    800064b8:	078080e7          	jalr	120(ra) # 8000652c <userinit>
    800064bc:	0ff0000f          	fence
    800064c0:	00100793          	li	a5,1
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	1bc50513          	addi	a0,a0,444 # 80009680 <CONSOLE_STATUS+0x670>
    800064cc:	00f4a023          	sw	a5,0(s1)
    800064d0:	00001097          	auipc	ra,0x1
    800064d4:	a48080e7          	jalr	-1464(ra) # 80006f18 <__printf>
    800064d8:	0000006f          	j	800064d8 <system_main+0xd4>

00000000800064dc <cpuid>:
    800064dc:	ff010113          	addi	sp,sp,-16
    800064e0:	00813423          	sd	s0,8(sp)
    800064e4:	01010413          	addi	s0,sp,16
    800064e8:	00020513          	mv	a0,tp
    800064ec:	00813403          	ld	s0,8(sp)
    800064f0:	0005051b          	sext.w	a0,a0
    800064f4:	01010113          	addi	sp,sp,16
    800064f8:	00008067          	ret

00000000800064fc <mycpu>:
    800064fc:	ff010113          	addi	sp,sp,-16
    80006500:	00813423          	sd	s0,8(sp)
    80006504:	01010413          	addi	s0,sp,16
    80006508:	00020793          	mv	a5,tp
    8000650c:	00813403          	ld	s0,8(sp)
    80006510:	0007879b          	sext.w	a5,a5
    80006514:	00779793          	slli	a5,a5,0x7
    80006518:	0000a517          	auipc	a0,0xa
    8000651c:	63850513          	addi	a0,a0,1592 # 80010b50 <cpus>
    80006520:	00f50533          	add	a0,a0,a5
    80006524:	01010113          	addi	sp,sp,16
    80006528:	00008067          	ret

000000008000652c <userinit>:
    8000652c:	ff010113          	addi	sp,sp,-16
    80006530:	00813423          	sd	s0,8(sp)
    80006534:	01010413          	addi	s0,sp,16
    80006538:	00813403          	ld	s0,8(sp)
    8000653c:	01010113          	addi	sp,sp,16
    80006540:	ffffd317          	auipc	t1,0xffffd
    80006544:	5a430067          	jr	1444(t1) # 80003ae4 <main>

0000000080006548 <either_copyout>:
    80006548:	ff010113          	addi	sp,sp,-16
    8000654c:	00813023          	sd	s0,0(sp)
    80006550:	00113423          	sd	ra,8(sp)
    80006554:	01010413          	addi	s0,sp,16
    80006558:	02051663          	bnez	a0,80006584 <either_copyout+0x3c>
    8000655c:	00058513          	mv	a0,a1
    80006560:	00060593          	mv	a1,a2
    80006564:	0006861b          	sext.w	a2,a3
    80006568:	00002097          	auipc	ra,0x2
    8000656c:	c5c080e7          	jalr	-932(ra) # 800081c4 <__memmove>
    80006570:	00813083          	ld	ra,8(sp)
    80006574:	00013403          	ld	s0,0(sp)
    80006578:	00000513          	li	a0,0
    8000657c:	01010113          	addi	sp,sp,16
    80006580:	00008067          	ret
    80006584:	00003517          	auipc	a0,0x3
    80006588:	13c50513          	addi	a0,a0,316 # 800096c0 <CONSOLE_STATUS+0x6b0>
    8000658c:	00001097          	auipc	ra,0x1
    80006590:	930080e7          	jalr	-1744(ra) # 80006ebc <panic>

0000000080006594 <either_copyin>:
    80006594:	ff010113          	addi	sp,sp,-16
    80006598:	00813023          	sd	s0,0(sp)
    8000659c:	00113423          	sd	ra,8(sp)
    800065a0:	01010413          	addi	s0,sp,16
    800065a4:	02059463          	bnez	a1,800065cc <either_copyin+0x38>
    800065a8:	00060593          	mv	a1,a2
    800065ac:	0006861b          	sext.w	a2,a3
    800065b0:	00002097          	auipc	ra,0x2
    800065b4:	c14080e7          	jalr	-1004(ra) # 800081c4 <__memmove>
    800065b8:	00813083          	ld	ra,8(sp)
    800065bc:	00013403          	ld	s0,0(sp)
    800065c0:	00000513          	li	a0,0
    800065c4:	01010113          	addi	sp,sp,16
    800065c8:	00008067          	ret
    800065cc:	00003517          	auipc	a0,0x3
    800065d0:	11c50513          	addi	a0,a0,284 # 800096e8 <CONSOLE_STATUS+0x6d8>
    800065d4:	00001097          	auipc	ra,0x1
    800065d8:	8e8080e7          	jalr	-1816(ra) # 80006ebc <panic>

00000000800065dc <trapinit>:
    800065dc:	ff010113          	addi	sp,sp,-16
    800065e0:	00813423          	sd	s0,8(sp)
    800065e4:	01010413          	addi	s0,sp,16
    800065e8:	00813403          	ld	s0,8(sp)
    800065ec:	00003597          	auipc	a1,0x3
    800065f0:	12458593          	addi	a1,a1,292 # 80009710 <CONSOLE_STATUS+0x700>
    800065f4:	0000a517          	auipc	a0,0xa
    800065f8:	5dc50513          	addi	a0,a0,1500 # 80010bd0 <tickslock>
    800065fc:	01010113          	addi	sp,sp,16
    80006600:	00001317          	auipc	t1,0x1
    80006604:	5c830067          	jr	1480(t1) # 80007bc8 <initlock>

0000000080006608 <trapinithart>:
    80006608:	ff010113          	addi	sp,sp,-16
    8000660c:	00813423          	sd	s0,8(sp)
    80006610:	01010413          	addi	s0,sp,16
    80006614:	00000797          	auipc	a5,0x0
    80006618:	2fc78793          	addi	a5,a5,764 # 80006910 <kernelvec>
    8000661c:	10579073          	csrw	stvec,a5
    80006620:	00813403          	ld	s0,8(sp)
    80006624:	01010113          	addi	sp,sp,16
    80006628:	00008067          	ret

000000008000662c <usertrap>:
    8000662c:	ff010113          	addi	sp,sp,-16
    80006630:	00813423          	sd	s0,8(sp)
    80006634:	01010413          	addi	s0,sp,16
    80006638:	00813403          	ld	s0,8(sp)
    8000663c:	01010113          	addi	sp,sp,16
    80006640:	00008067          	ret

0000000080006644 <usertrapret>:
    80006644:	ff010113          	addi	sp,sp,-16
    80006648:	00813423          	sd	s0,8(sp)
    8000664c:	01010413          	addi	s0,sp,16
    80006650:	00813403          	ld	s0,8(sp)
    80006654:	01010113          	addi	sp,sp,16
    80006658:	00008067          	ret

000000008000665c <kerneltrap>:
    8000665c:	fe010113          	addi	sp,sp,-32
    80006660:	00813823          	sd	s0,16(sp)
    80006664:	00113c23          	sd	ra,24(sp)
    80006668:	00913423          	sd	s1,8(sp)
    8000666c:	02010413          	addi	s0,sp,32
    80006670:	142025f3          	csrr	a1,scause
    80006674:	100027f3          	csrr	a5,sstatus
    80006678:	0027f793          	andi	a5,a5,2
    8000667c:	10079c63          	bnez	a5,80006794 <kerneltrap+0x138>
    80006680:	142027f3          	csrr	a5,scause
    80006684:	0207ce63          	bltz	a5,800066c0 <kerneltrap+0x64>
    80006688:	00003517          	auipc	a0,0x3
    8000668c:	0d050513          	addi	a0,a0,208 # 80009758 <CONSOLE_STATUS+0x748>
    80006690:	00001097          	auipc	ra,0x1
    80006694:	888080e7          	jalr	-1912(ra) # 80006f18 <__printf>
    80006698:	141025f3          	csrr	a1,sepc
    8000669c:	14302673          	csrr	a2,stval
    800066a0:	00003517          	auipc	a0,0x3
    800066a4:	0c850513          	addi	a0,a0,200 # 80009768 <CONSOLE_STATUS+0x758>
    800066a8:	00001097          	auipc	ra,0x1
    800066ac:	870080e7          	jalr	-1936(ra) # 80006f18 <__printf>
    800066b0:	00003517          	auipc	a0,0x3
    800066b4:	0d050513          	addi	a0,a0,208 # 80009780 <CONSOLE_STATUS+0x770>
    800066b8:	00001097          	auipc	ra,0x1
    800066bc:	804080e7          	jalr	-2044(ra) # 80006ebc <panic>
    800066c0:	0ff7f713          	andi	a4,a5,255
    800066c4:	00900693          	li	a3,9
    800066c8:	04d70063          	beq	a4,a3,80006708 <kerneltrap+0xac>
    800066cc:	fff00713          	li	a4,-1
    800066d0:	03f71713          	slli	a4,a4,0x3f
    800066d4:	00170713          	addi	a4,a4,1
    800066d8:	fae798e3          	bne	a5,a4,80006688 <kerneltrap+0x2c>
    800066dc:	00000097          	auipc	ra,0x0
    800066e0:	e00080e7          	jalr	-512(ra) # 800064dc <cpuid>
    800066e4:	06050663          	beqz	a0,80006750 <kerneltrap+0xf4>
    800066e8:	144027f3          	csrr	a5,sip
    800066ec:	ffd7f793          	andi	a5,a5,-3
    800066f0:	14479073          	csrw	sip,a5
    800066f4:	01813083          	ld	ra,24(sp)
    800066f8:	01013403          	ld	s0,16(sp)
    800066fc:	00813483          	ld	s1,8(sp)
    80006700:	02010113          	addi	sp,sp,32
    80006704:	00008067          	ret
    80006708:	00000097          	auipc	ra,0x0
    8000670c:	3cc080e7          	jalr	972(ra) # 80006ad4 <plic_claim>
    80006710:	00a00793          	li	a5,10
    80006714:	00050493          	mv	s1,a0
    80006718:	06f50863          	beq	a0,a5,80006788 <kerneltrap+0x12c>
    8000671c:	fc050ce3          	beqz	a0,800066f4 <kerneltrap+0x98>
    80006720:	00050593          	mv	a1,a0
    80006724:	00003517          	auipc	a0,0x3
    80006728:	01450513          	addi	a0,a0,20 # 80009738 <CONSOLE_STATUS+0x728>
    8000672c:	00000097          	auipc	ra,0x0
    80006730:	7ec080e7          	jalr	2028(ra) # 80006f18 <__printf>
    80006734:	01013403          	ld	s0,16(sp)
    80006738:	01813083          	ld	ra,24(sp)
    8000673c:	00048513          	mv	a0,s1
    80006740:	00813483          	ld	s1,8(sp)
    80006744:	02010113          	addi	sp,sp,32
    80006748:	00000317          	auipc	t1,0x0
    8000674c:	3c430067          	jr	964(t1) # 80006b0c <plic_complete>
    80006750:	0000a517          	auipc	a0,0xa
    80006754:	48050513          	addi	a0,a0,1152 # 80010bd0 <tickslock>
    80006758:	00001097          	auipc	ra,0x1
    8000675c:	494080e7          	jalr	1172(ra) # 80007bec <acquire>
    80006760:	00005717          	auipc	a4,0x5
    80006764:	2d470713          	addi	a4,a4,724 # 8000ba34 <ticks>
    80006768:	00072783          	lw	a5,0(a4)
    8000676c:	0000a517          	auipc	a0,0xa
    80006770:	46450513          	addi	a0,a0,1124 # 80010bd0 <tickslock>
    80006774:	0017879b          	addiw	a5,a5,1
    80006778:	00f72023          	sw	a5,0(a4)
    8000677c:	00001097          	auipc	ra,0x1
    80006780:	53c080e7          	jalr	1340(ra) # 80007cb8 <release>
    80006784:	f65ff06f          	j	800066e8 <kerneltrap+0x8c>
    80006788:	00001097          	auipc	ra,0x1
    8000678c:	098080e7          	jalr	152(ra) # 80007820 <uartintr>
    80006790:	fa5ff06f          	j	80006734 <kerneltrap+0xd8>
    80006794:	00003517          	auipc	a0,0x3
    80006798:	f8450513          	addi	a0,a0,-124 # 80009718 <CONSOLE_STATUS+0x708>
    8000679c:	00000097          	auipc	ra,0x0
    800067a0:	720080e7          	jalr	1824(ra) # 80006ebc <panic>

00000000800067a4 <clockintr>:
    800067a4:	fe010113          	addi	sp,sp,-32
    800067a8:	00813823          	sd	s0,16(sp)
    800067ac:	00913423          	sd	s1,8(sp)
    800067b0:	00113c23          	sd	ra,24(sp)
    800067b4:	02010413          	addi	s0,sp,32
    800067b8:	0000a497          	auipc	s1,0xa
    800067bc:	41848493          	addi	s1,s1,1048 # 80010bd0 <tickslock>
    800067c0:	00048513          	mv	a0,s1
    800067c4:	00001097          	auipc	ra,0x1
    800067c8:	428080e7          	jalr	1064(ra) # 80007bec <acquire>
    800067cc:	00005717          	auipc	a4,0x5
    800067d0:	26870713          	addi	a4,a4,616 # 8000ba34 <ticks>
    800067d4:	00072783          	lw	a5,0(a4)
    800067d8:	01013403          	ld	s0,16(sp)
    800067dc:	01813083          	ld	ra,24(sp)
    800067e0:	00048513          	mv	a0,s1
    800067e4:	0017879b          	addiw	a5,a5,1
    800067e8:	00813483          	ld	s1,8(sp)
    800067ec:	00f72023          	sw	a5,0(a4)
    800067f0:	02010113          	addi	sp,sp,32
    800067f4:	00001317          	auipc	t1,0x1
    800067f8:	4c430067          	jr	1220(t1) # 80007cb8 <release>

00000000800067fc <devintr>:
    800067fc:	142027f3          	csrr	a5,scause
    80006800:	00000513          	li	a0,0
    80006804:	0007c463          	bltz	a5,8000680c <devintr+0x10>
    80006808:	00008067          	ret
    8000680c:	fe010113          	addi	sp,sp,-32
    80006810:	00813823          	sd	s0,16(sp)
    80006814:	00113c23          	sd	ra,24(sp)
    80006818:	00913423          	sd	s1,8(sp)
    8000681c:	02010413          	addi	s0,sp,32
    80006820:	0ff7f713          	andi	a4,a5,255
    80006824:	00900693          	li	a3,9
    80006828:	04d70c63          	beq	a4,a3,80006880 <devintr+0x84>
    8000682c:	fff00713          	li	a4,-1
    80006830:	03f71713          	slli	a4,a4,0x3f
    80006834:	00170713          	addi	a4,a4,1
    80006838:	00e78c63          	beq	a5,a4,80006850 <devintr+0x54>
    8000683c:	01813083          	ld	ra,24(sp)
    80006840:	01013403          	ld	s0,16(sp)
    80006844:	00813483          	ld	s1,8(sp)
    80006848:	02010113          	addi	sp,sp,32
    8000684c:	00008067          	ret
    80006850:	00000097          	auipc	ra,0x0
    80006854:	c8c080e7          	jalr	-884(ra) # 800064dc <cpuid>
    80006858:	06050663          	beqz	a0,800068c4 <devintr+0xc8>
    8000685c:	144027f3          	csrr	a5,sip
    80006860:	ffd7f793          	andi	a5,a5,-3
    80006864:	14479073          	csrw	sip,a5
    80006868:	01813083          	ld	ra,24(sp)
    8000686c:	01013403          	ld	s0,16(sp)
    80006870:	00813483          	ld	s1,8(sp)
    80006874:	00200513          	li	a0,2
    80006878:	02010113          	addi	sp,sp,32
    8000687c:	00008067          	ret
    80006880:	00000097          	auipc	ra,0x0
    80006884:	254080e7          	jalr	596(ra) # 80006ad4 <plic_claim>
    80006888:	00a00793          	li	a5,10
    8000688c:	00050493          	mv	s1,a0
    80006890:	06f50663          	beq	a0,a5,800068fc <devintr+0x100>
    80006894:	00100513          	li	a0,1
    80006898:	fa0482e3          	beqz	s1,8000683c <devintr+0x40>
    8000689c:	00048593          	mv	a1,s1
    800068a0:	00003517          	auipc	a0,0x3
    800068a4:	e9850513          	addi	a0,a0,-360 # 80009738 <CONSOLE_STATUS+0x728>
    800068a8:	00000097          	auipc	ra,0x0
    800068ac:	670080e7          	jalr	1648(ra) # 80006f18 <__printf>
    800068b0:	00048513          	mv	a0,s1
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	258080e7          	jalr	600(ra) # 80006b0c <plic_complete>
    800068bc:	00100513          	li	a0,1
    800068c0:	f7dff06f          	j	8000683c <devintr+0x40>
    800068c4:	0000a517          	auipc	a0,0xa
    800068c8:	30c50513          	addi	a0,a0,780 # 80010bd0 <tickslock>
    800068cc:	00001097          	auipc	ra,0x1
    800068d0:	320080e7          	jalr	800(ra) # 80007bec <acquire>
    800068d4:	00005717          	auipc	a4,0x5
    800068d8:	16070713          	addi	a4,a4,352 # 8000ba34 <ticks>
    800068dc:	00072783          	lw	a5,0(a4)
    800068e0:	0000a517          	auipc	a0,0xa
    800068e4:	2f050513          	addi	a0,a0,752 # 80010bd0 <tickslock>
    800068e8:	0017879b          	addiw	a5,a5,1
    800068ec:	00f72023          	sw	a5,0(a4)
    800068f0:	00001097          	auipc	ra,0x1
    800068f4:	3c8080e7          	jalr	968(ra) # 80007cb8 <release>
    800068f8:	f65ff06f          	j	8000685c <devintr+0x60>
    800068fc:	00001097          	auipc	ra,0x1
    80006900:	f24080e7          	jalr	-220(ra) # 80007820 <uartintr>
    80006904:	fadff06f          	j	800068b0 <devintr+0xb4>
	...

0000000080006910 <kernelvec>:
    80006910:	f0010113          	addi	sp,sp,-256
    80006914:	00113023          	sd	ra,0(sp)
    80006918:	00213423          	sd	sp,8(sp)
    8000691c:	00313823          	sd	gp,16(sp)
    80006920:	00413c23          	sd	tp,24(sp)
    80006924:	02513023          	sd	t0,32(sp)
    80006928:	02613423          	sd	t1,40(sp)
    8000692c:	02713823          	sd	t2,48(sp)
    80006930:	02813c23          	sd	s0,56(sp)
    80006934:	04913023          	sd	s1,64(sp)
    80006938:	04a13423          	sd	a0,72(sp)
    8000693c:	04b13823          	sd	a1,80(sp)
    80006940:	04c13c23          	sd	a2,88(sp)
    80006944:	06d13023          	sd	a3,96(sp)
    80006948:	06e13423          	sd	a4,104(sp)
    8000694c:	06f13823          	sd	a5,112(sp)
    80006950:	07013c23          	sd	a6,120(sp)
    80006954:	09113023          	sd	a7,128(sp)
    80006958:	09213423          	sd	s2,136(sp)
    8000695c:	09313823          	sd	s3,144(sp)
    80006960:	09413c23          	sd	s4,152(sp)
    80006964:	0b513023          	sd	s5,160(sp)
    80006968:	0b613423          	sd	s6,168(sp)
    8000696c:	0b713823          	sd	s7,176(sp)
    80006970:	0b813c23          	sd	s8,184(sp)
    80006974:	0d913023          	sd	s9,192(sp)
    80006978:	0da13423          	sd	s10,200(sp)
    8000697c:	0db13823          	sd	s11,208(sp)
    80006980:	0dc13c23          	sd	t3,216(sp)
    80006984:	0fd13023          	sd	t4,224(sp)
    80006988:	0fe13423          	sd	t5,232(sp)
    8000698c:	0ff13823          	sd	t6,240(sp)
    80006990:	ccdff0ef          	jal	ra,8000665c <kerneltrap>
    80006994:	00013083          	ld	ra,0(sp)
    80006998:	00813103          	ld	sp,8(sp)
    8000699c:	01013183          	ld	gp,16(sp)
    800069a0:	02013283          	ld	t0,32(sp)
    800069a4:	02813303          	ld	t1,40(sp)
    800069a8:	03013383          	ld	t2,48(sp)
    800069ac:	03813403          	ld	s0,56(sp)
    800069b0:	04013483          	ld	s1,64(sp)
    800069b4:	04813503          	ld	a0,72(sp)
    800069b8:	05013583          	ld	a1,80(sp)
    800069bc:	05813603          	ld	a2,88(sp)
    800069c0:	06013683          	ld	a3,96(sp)
    800069c4:	06813703          	ld	a4,104(sp)
    800069c8:	07013783          	ld	a5,112(sp)
    800069cc:	07813803          	ld	a6,120(sp)
    800069d0:	08013883          	ld	a7,128(sp)
    800069d4:	08813903          	ld	s2,136(sp)
    800069d8:	09013983          	ld	s3,144(sp)
    800069dc:	09813a03          	ld	s4,152(sp)
    800069e0:	0a013a83          	ld	s5,160(sp)
    800069e4:	0a813b03          	ld	s6,168(sp)
    800069e8:	0b013b83          	ld	s7,176(sp)
    800069ec:	0b813c03          	ld	s8,184(sp)
    800069f0:	0c013c83          	ld	s9,192(sp)
    800069f4:	0c813d03          	ld	s10,200(sp)
    800069f8:	0d013d83          	ld	s11,208(sp)
    800069fc:	0d813e03          	ld	t3,216(sp)
    80006a00:	0e013e83          	ld	t4,224(sp)
    80006a04:	0e813f03          	ld	t5,232(sp)
    80006a08:	0f013f83          	ld	t6,240(sp)
    80006a0c:	10010113          	addi	sp,sp,256
    80006a10:	10200073          	sret
    80006a14:	00000013          	nop
    80006a18:	00000013          	nop
    80006a1c:	00000013          	nop

0000000080006a20 <timervec>:
    80006a20:	34051573          	csrrw	a0,mscratch,a0
    80006a24:	00b53023          	sd	a1,0(a0)
    80006a28:	00c53423          	sd	a2,8(a0)
    80006a2c:	00d53823          	sd	a3,16(a0)
    80006a30:	01853583          	ld	a1,24(a0)
    80006a34:	02053603          	ld	a2,32(a0)
    80006a38:	0005b683          	ld	a3,0(a1)
    80006a3c:	00c686b3          	add	a3,a3,a2
    80006a40:	00d5b023          	sd	a3,0(a1)
    80006a44:	00200593          	li	a1,2
    80006a48:	14459073          	csrw	sip,a1
    80006a4c:	01053683          	ld	a3,16(a0)
    80006a50:	00853603          	ld	a2,8(a0)
    80006a54:	00053583          	ld	a1,0(a0)
    80006a58:	34051573          	csrrw	a0,mscratch,a0
    80006a5c:	30200073          	mret

0000000080006a60 <plicinit>:
    80006a60:	ff010113          	addi	sp,sp,-16
    80006a64:	00813423          	sd	s0,8(sp)
    80006a68:	01010413          	addi	s0,sp,16
    80006a6c:	00813403          	ld	s0,8(sp)
    80006a70:	0c0007b7          	lui	a5,0xc000
    80006a74:	00100713          	li	a4,1
    80006a78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006a7c:	00e7a223          	sw	a4,4(a5)
    80006a80:	01010113          	addi	sp,sp,16
    80006a84:	00008067          	ret

0000000080006a88 <plicinithart>:
    80006a88:	ff010113          	addi	sp,sp,-16
    80006a8c:	00813023          	sd	s0,0(sp)
    80006a90:	00113423          	sd	ra,8(sp)
    80006a94:	01010413          	addi	s0,sp,16
    80006a98:	00000097          	auipc	ra,0x0
    80006a9c:	a44080e7          	jalr	-1468(ra) # 800064dc <cpuid>
    80006aa0:	0085171b          	slliw	a4,a0,0x8
    80006aa4:	0c0027b7          	lui	a5,0xc002
    80006aa8:	00e787b3          	add	a5,a5,a4
    80006aac:	40200713          	li	a4,1026
    80006ab0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ab4:	00813083          	ld	ra,8(sp)
    80006ab8:	00013403          	ld	s0,0(sp)
    80006abc:	00d5151b          	slliw	a0,a0,0xd
    80006ac0:	0c2017b7          	lui	a5,0xc201
    80006ac4:	00a78533          	add	a0,a5,a0
    80006ac8:	00052023          	sw	zero,0(a0)
    80006acc:	01010113          	addi	sp,sp,16
    80006ad0:	00008067          	ret

0000000080006ad4 <plic_claim>:
    80006ad4:	ff010113          	addi	sp,sp,-16
    80006ad8:	00813023          	sd	s0,0(sp)
    80006adc:	00113423          	sd	ra,8(sp)
    80006ae0:	01010413          	addi	s0,sp,16
    80006ae4:	00000097          	auipc	ra,0x0
    80006ae8:	9f8080e7          	jalr	-1544(ra) # 800064dc <cpuid>
    80006aec:	00813083          	ld	ra,8(sp)
    80006af0:	00013403          	ld	s0,0(sp)
    80006af4:	00d5151b          	slliw	a0,a0,0xd
    80006af8:	0c2017b7          	lui	a5,0xc201
    80006afc:	00a78533          	add	a0,a5,a0
    80006b00:	00452503          	lw	a0,4(a0)
    80006b04:	01010113          	addi	sp,sp,16
    80006b08:	00008067          	ret

0000000080006b0c <plic_complete>:
    80006b0c:	fe010113          	addi	sp,sp,-32
    80006b10:	00813823          	sd	s0,16(sp)
    80006b14:	00913423          	sd	s1,8(sp)
    80006b18:	00113c23          	sd	ra,24(sp)
    80006b1c:	02010413          	addi	s0,sp,32
    80006b20:	00050493          	mv	s1,a0
    80006b24:	00000097          	auipc	ra,0x0
    80006b28:	9b8080e7          	jalr	-1608(ra) # 800064dc <cpuid>
    80006b2c:	01813083          	ld	ra,24(sp)
    80006b30:	01013403          	ld	s0,16(sp)
    80006b34:	00d5179b          	slliw	a5,a0,0xd
    80006b38:	0c201737          	lui	a4,0xc201
    80006b3c:	00f707b3          	add	a5,a4,a5
    80006b40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b44:	00813483          	ld	s1,8(sp)
    80006b48:	02010113          	addi	sp,sp,32
    80006b4c:	00008067          	ret

0000000080006b50 <consolewrite>:
    80006b50:	fb010113          	addi	sp,sp,-80
    80006b54:	04813023          	sd	s0,64(sp)
    80006b58:	04113423          	sd	ra,72(sp)
    80006b5c:	02913c23          	sd	s1,56(sp)
    80006b60:	03213823          	sd	s2,48(sp)
    80006b64:	03313423          	sd	s3,40(sp)
    80006b68:	03413023          	sd	s4,32(sp)
    80006b6c:	01513c23          	sd	s5,24(sp)
    80006b70:	05010413          	addi	s0,sp,80
    80006b74:	06c05c63          	blez	a2,80006bec <consolewrite+0x9c>
    80006b78:	00060993          	mv	s3,a2
    80006b7c:	00050a13          	mv	s4,a0
    80006b80:	00058493          	mv	s1,a1
    80006b84:	00000913          	li	s2,0
    80006b88:	fff00a93          	li	s5,-1
    80006b8c:	01c0006f          	j	80006ba8 <consolewrite+0x58>
    80006b90:	fbf44503          	lbu	a0,-65(s0)
    80006b94:	0019091b          	addiw	s2,s2,1
    80006b98:	00148493          	addi	s1,s1,1
    80006b9c:	00001097          	auipc	ra,0x1
    80006ba0:	a9c080e7          	jalr	-1380(ra) # 80007638 <uartputc>
    80006ba4:	03298063          	beq	s3,s2,80006bc4 <consolewrite+0x74>
    80006ba8:	00048613          	mv	a2,s1
    80006bac:	00100693          	li	a3,1
    80006bb0:	000a0593          	mv	a1,s4
    80006bb4:	fbf40513          	addi	a0,s0,-65
    80006bb8:	00000097          	auipc	ra,0x0
    80006bbc:	9dc080e7          	jalr	-1572(ra) # 80006594 <either_copyin>
    80006bc0:	fd5518e3          	bne	a0,s5,80006b90 <consolewrite+0x40>
    80006bc4:	04813083          	ld	ra,72(sp)
    80006bc8:	04013403          	ld	s0,64(sp)
    80006bcc:	03813483          	ld	s1,56(sp)
    80006bd0:	02813983          	ld	s3,40(sp)
    80006bd4:	02013a03          	ld	s4,32(sp)
    80006bd8:	01813a83          	ld	s5,24(sp)
    80006bdc:	00090513          	mv	a0,s2
    80006be0:	03013903          	ld	s2,48(sp)
    80006be4:	05010113          	addi	sp,sp,80
    80006be8:	00008067          	ret
    80006bec:	00000913          	li	s2,0
    80006bf0:	fd5ff06f          	j	80006bc4 <consolewrite+0x74>

0000000080006bf4 <consoleread>:
    80006bf4:	f9010113          	addi	sp,sp,-112
    80006bf8:	06813023          	sd	s0,96(sp)
    80006bfc:	04913c23          	sd	s1,88(sp)
    80006c00:	05213823          	sd	s2,80(sp)
    80006c04:	05313423          	sd	s3,72(sp)
    80006c08:	05413023          	sd	s4,64(sp)
    80006c0c:	03513c23          	sd	s5,56(sp)
    80006c10:	03613823          	sd	s6,48(sp)
    80006c14:	03713423          	sd	s7,40(sp)
    80006c18:	03813023          	sd	s8,32(sp)
    80006c1c:	06113423          	sd	ra,104(sp)
    80006c20:	01913c23          	sd	s9,24(sp)
    80006c24:	07010413          	addi	s0,sp,112
    80006c28:	00060b93          	mv	s7,a2
    80006c2c:	00050913          	mv	s2,a0
    80006c30:	00058c13          	mv	s8,a1
    80006c34:	00060b1b          	sext.w	s6,a2
    80006c38:	0000a497          	auipc	s1,0xa
    80006c3c:	fc048493          	addi	s1,s1,-64 # 80010bf8 <cons>
    80006c40:	00400993          	li	s3,4
    80006c44:	fff00a13          	li	s4,-1
    80006c48:	00a00a93          	li	s5,10
    80006c4c:	05705e63          	blez	s7,80006ca8 <consoleread+0xb4>
    80006c50:	09c4a703          	lw	a4,156(s1)
    80006c54:	0984a783          	lw	a5,152(s1)
    80006c58:	0007071b          	sext.w	a4,a4
    80006c5c:	08e78463          	beq	a5,a4,80006ce4 <consoleread+0xf0>
    80006c60:	07f7f713          	andi	a4,a5,127
    80006c64:	00e48733          	add	a4,s1,a4
    80006c68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006c6c:	0017869b          	addiw	a3,a5,1
    80006c70:	08d4ac23          	sw	a3,152(s1)
    80006c74:	00070c9b          	sext.w	s9,a4
    80006c78:	0b370663          	beq	a4,s3,80006d24 <consoleread+0x130>
    80006c7c:	00100693          	li	a3,1
    80006c80:	f9f40613          	addi	a2,s0,-97
    80006c84:	000c0593          	mv	a1,s8
    80006c88:	00090513          	mv	a0,s2
    80006c8c:	f8e40fa3          	sb	a4,-97(s0)
    80006c90:	00000097          	auipc	ra,0x0
    80006c94:	8b8080e7          	jalr	-1864(ra) # 80006548 <either_copyout>
    80006c98:	01450863          	beq	a0,s4,80006ca8 <consoleread+0xb4>
    80006c9c:	001c0c13          	addi	s8,s8,1
    80006ca0:	fffb8b9b          	addiw	s7,s7,-1
    80006ca4:	fb5c94e3          	bne	s9,s5,80006c4c <consoleread+0x58>
    80006ca8:	000b851b          	sext.w	a0,s7
    80006cac:	06813083          	ld	ra,104(sp)
    80006cb0:	06013403          	ld	s0,96(sp)
    80006cb4:	05813483          	ld	s1,88(sp)
    80006cb8:	05013903          	ld	s2,80(sp)
    80006cbc:	04813983          	ld	s3,72(sp)
    80006cc0:	04013a03          	ld	s4,64(sp)
    80006cc4:	03813a83          	ld	s5,56(sp)
    80006cc8:	02813b83          	ld	s7,40(sp)
    80006ccc:	02013c03          	ld	s8,32(sp)
    80006cd0:	01813c83          	ld	s9,24(sp)
    80006cd4:	40ab053b          	subw	a0,s6,a0
    80006cd8:	03013b03          	ld	s6,48(sp)
    80006cdc:	07010113          	addi	sp,sp,112
    80006ce0:	00008067          	ret
    80006ce4:	00001097          	auipc	ra,0x1
    80006ce8:	1d8080e7          	jalr	472(ra) # 80007ebc <push_on>
    80006cec:	0984a703          	lw	a4,152(s1)
    80006cf0:	09c4a783          	lw	a5,156(s1)
    80006cf4:	0007879b          	sext.w	a5,a5
    80006cf8:	fef70ce3          	beq	a4,a5,80006cf0 <consoleread+0xfc>
    80006cfc:	00001097          	auipc	ra,0x1
    80006d00:	234080e7          	jalr	564(ra) # 80007f30 <pop_on>
    80006d04:	0984a783          	lw	a5,152(s1)
    80006d08:	07f7f713          	andi	a4,a5,127
    80006d0c:	00e48733          	add	a4,s1,a4
    80006d10:	01874703          	lbu	a4,24(a4)
    80006d14:	0017869b          	addiw	a3,a5,1
    80006d18:	08d4ac23          	sw	a3,152(s1)
    80006d1c:	00070c9b          	sext.w	s9,a4
    80006d20:	f5371ee3          	bne	a4,s3,80006c7c <consoleread+0x88>
    80006d24:	000b851b          	sext.w	a0,s7
    80006d28:	f96bf2e3          	bgeu	s7,s6,80006cac <consoleread+0xb8>
    80006d2c:	08f4ac23          	sw	a5,152(s1)
    80006d30:	f7dff06f          	j	80006cac <consoleread+0xb8>

0000000080006d34 <consputc>:
    80006d34:	10000793          	li	a5,256
    80006d38:	00f50663          	beq	a0,a5,80006d44 <consputc+0x10>
    80006d3c:	00001317          	auipc	t1,0x1
    80006d40:	9f430067          	jr	-1548(t1) # 80007730 <uartputc_sync>
    80006d44:	ff010113          	addi	sp,sp,-16
    80006d48:	00113423          	sd	ra,8(sp)
    80006d4c:	00813023          	sd	s0,0(sp)
    80006d50:	01010413          	addi	s0,sp,16
    80006d54:	00800513          	li	a0,8
    80006d58:	00001097          	auipc	ra,0x1
    80006d5c:	9d8080e7          	jalr	-1576(ra) # 80007730 <uartputc_sync>
    80006d60:	02000513          	li	a0,32
    80006d64:	00001097          	auipc	ra,0x1
    80006d68:	9cc080e7          	jalr	-1588(ra) # 80007730 <uartputc_sync>
    80006d6c:	00013403          	ld	s0,0(sp)
    80006d70:	00813083          	ld	ra,8(sp)
    80006d74:	00800513          	li	a0,8
    80006d78:	01010113          	addi	sp,sp,16
    80006d7c:	00001317          	auipc	t1,0x1
    80006d80:	9b430067          	jr	-1612(t1) # 80007730 <uartputc_sync>

0000000080006d84 <consoleintr>:
    80006d84:	fe010113          	addi	sp,sp,-32
    80006d88:	00813823          	sd	s0,16(sp)
    80006d8c:	00913423          	sd	s1,8(sp)
    80006d90:	01213023          	sd	s2,0(sp)
    80006d94:	00113c23          	sd	ra,24(sp)
    80006d98:	02010413          	addi	s0,sp,32
    80006d9c:	0000a917          	auipc	s2,0xa
    80006da0:	e5c90913          	addi	s2,s2,-420 # 80010bf8 <cons>
    80006da4:	00050493          	mv	s1,a0
    80006da8:	00090513          	mv	a0,s2
    80006dac:	00001097          	auipc	ra,0x1
    80006db0:	e40080e7          	jalr	-448(ra) # 80007bec <acquire>
    80006db4:	02048c63          	beqz	s1,80006dec <consoleintr+0x68>
    80006db8:	0a092783          	lw	a5,160(s2)
    80006dbc:	09892703          	lw	a4,152(s2)
    80006dc0:	07f00693          	li	a3,127
    80006dc4:	40e7873b          	subw	a4,a5,a4
    80006dc8:	02e6e263          	bltu	a3,a4,80006dec <consoleintr+0x68>
    80006dcc:	00d00713          	li	a4,13
    80006dd0:	04e48063          	beq	s1,a4,80006e10 <consoleintr+0x8c>
    80006dd4:	07f7f713          	andi	a4,a5,127
    80006dd8:	00e90733          	add	a4,s2,a4
    80006ddc:	0017879b          	addiw	a5,a5,1
    80006de0:	0af92023          	sw	a5,160(s2)
    80006de4:	00970c23          	sb	s1,24(a4)
    80006de8:	08f92e23          	sw	a5,156(s2)
    80006dec:	01013403          	ld	s0,16(sp)
    80006df0:	01813083          	ld	ra,24(sp)
    80006df4:	00813483          	ld	s1,8(sp)
    80006df8:	00013903          	ld	s2,0(sp)
    80006dfc:	0000a517          	auipc	a0,0xa
    80006e00:	dfc50513          	addi	a0,a0,-516 # 80010bf8 <cons>
    80006e04:	02010113          	addi	sp,sp,32
    80006e08:	00001317          	auipc	t1,0x1
    80006e0c:	eb030067          	jr	-336(t1) # 80007cb8 <release>
    80006e10:	00a00493          	li	s1,10
    80006e14:	fc1ff06f          	j	80006dd4 <consoleintr+0x50>

0000000080006e18 <consoleinit>:
    80006e18:	fe010113          	addi	sp,sp,-32
    80006e1c:	00113c23          	sd	ra,24(sp)
    80006e20:	00813823          	sd	s0,16(sp)
    80006e24:	00913423          	sd	s1,8(sp)
    80006e28:	02010413          	addi	s0,sp,32
    80006e2c:	0000a497          	auipc	s1,0xa
    80006e30:	dcc48493          	addi	s1,s1,-564 # 80010bf8 <cons>
    80006e34:	00048513          	mv	a0,s1
    80006e38:	00003597          	auipc	a1,0x3
    80006e3c:	95858593          	addi	a1,a1,-1704 # 80009790 <CONSOLE_STATUS+0x780>
    80006e40:	00001097          	auipc	ra,0x1
    80006e44:	d88080e7          	jalr	-632(ra) # 80007bc8 <initlock>
    80006e48:	00000097          	auipc	ra,0x0
    80006e4c:	7ac080e7          	jalr	1964(ra) # 800075f4 <uartinit>
    80006e50:	01813083          	ld	ra,24(sp)
    80006e54:	01013403          	ld	s0,16(sp)
    80006e58:	00000797          	auipc	a5,0x0
    80006e5c:	d9c78793          	addi	a5,a5,-612 # 80006bf4 <consoleread>
    80006e60:	0af4bc23          	sd	a5,184(s1)
    80006e64:	00000797          	auipc	a5,0x0
    80006e68:	cec78793          	addi	a5,a5,-788 # 80006b50 <consolewrite>
    80006e6c:	0cf4b023          	sd	a5,192(s1)
    80006e70:	00813483          	ld	s1,8(sp)
    80006e74:	02010113          	addi	sp,sp,32
    80006e78:	00008067          	ret

0000000080006e7c <console_read>:
    80006e7c:	ff010113          	addi	sp,sp,-16
    80006e80:	00813423          	sd	s0,8(sp)
    80006e84:	01010413          	addi	s0,sp,16
    80006e88:	00813403          	ld	s0,8(sp)
    80006e8c:	0000a317          	auipc	t1,0xa
    80006e90:	e2433303          	ld	t1,-476(t1) # 80010cb0 <devsw+0x10>
    80006e94:	01010113          	addi	sp,sp,16
    80006e98:	00030067          	jr	t1

0000000080006e9c <console_write>:
    80006e9c:	ff010113          	addi	sp,sp,-16
    80006ea0:	00813423          	sd	s0,8(sp)
    80006ea4:	01010413          	addi	s0,sp,16
    80006ea8:	00813403          	ld	s0,8(sp)
    80006eac:	0000a317          	auipc	t1,0xa
    80006eb0:	e0c33303          	ld	t1,-500(t1) # 80010cb8 <devsw+0x18>
    80006eb4:	01010113          	addi	sp,sp,16
    80006eb8:	00030067          	jr	t1

0000000080006ebc <panic>:
    80006ebc:	fe010113          	addi	sp,sp,-32
    80006ec0:	00113c23          	sd	ra,24(sp)
    80006ec4:	00813823          	sd	s0,16(sp)
    80006ec8:	00913423          	sd	s1,8(sp)
    80006ecc:	02010413          	addi	s0,sp,32
    80006ed0:	00050493          	mv	s1,a0
    80006ed4:	00003517          	auipc	a0,0x3
    80006ed8:	8c450513          	addi	a0,a0,-1852 # 80009798 <CONSOLE_STATUS+0x788>
    80006edc:	0000a797          	auipc	a5,0xa
    80006ee0:	e607ae23          	sw	zero,-388(a5) # 80010d58 <pr+0x18>
    80006ee4:	00000097          	auipc	ra,0x0
    80006ee8:	034080e7          	jalr	52(ra) # 80006f18 <__printf>
    80006eec:	00048513          	mv	a0,s1
    80006ef0:	00000097          	auipc	ra,0x0
    80006ef4:	028080e7          	jalr	40(ra) # 80006f18 <__printf>
    80006ef8:	00003517          	auipc	a0,0x3
    80006efc:	88050513          	addi	a0,a0,-1920 # 80009778 <CONSOLE_STATUS+0x768>
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	018080e7          	jalr	24(ra) # 80006f18 <__printf>
    80006f08:	00100793          	li	a5,1
    80006f0c:	00005717          	auipc	a4,0x5
    80006f10:	b2f72623          	sw	a5,-1236(a4) # 8000ba38 <panicked>
    80006f14:	0000006f          	j	80006f14 <panic+0x58>

0000000080006f18 <__printf>:
    80006f18:	f3010113          	addi	sp,sp,-208
    80006f1c:	08813023          	sd	s0,128(sp)
    80006f20:	07313423          	sd	s3,104(sp)
    80006f24:	09010413          	addi	s0,sp,144
    80006f28:	05813023          	sd	s8,64(sp)
    80006f2c:	08113423          	sd	ra,136(sp)
    80006f30:	06913c23          	sd	s1,120(sp)
    80006f34:	07213823          	sd	s2,112(sp)
    80006f38:	07413023          	sd	s4,96(sp)
    80006f3c:	05513c23          	sd	s5,88(sp)
    80006f40:	05613823          	sd	s6,80(sp)
    80006f44:	05713423          	sd	s7,72(sp)
    80006f48:	03913c23          	sd	s9,56(sp)
    80006f4c:	03a13823          	sd	s10,48(sp)
    80006f50:	03b13423          	sd	s11,40(sp)
    80006f54:	0000a317          	auipc	t1,0xa
    80006f58:	dec30313          	addi	t1,t1,-532 # 80010d40 <pr>
    80006f5c:	01832c03          	lw	s8,24(t1)
    80006f60:	00b43423          	sd	a1,8(s0)
    80006f64:	00c43823          	sd	a2,16(s0)
    80006f68:	00d43c23          	sd	a3,24(s0)
    80006f6c:	02e43023          	sd	a4,32(s0)
    80006f70:	02f43423          	sd	a5,40(s0)
    80006f74:	03043823          	sd	a6,48(s0)
    80006f78:	03143c23          	sd	a7,56(s0)
    80006f7c:	00050993          	mv	s3,a0
    80006f80:	4a0c1663          	bnez	s8,8000742c <__printf+0x514>
    80006f84:	60098c63          	beqz	s3,8000759c <__printf+0x684>
    80006f88:	0009c503          	lbu	a0,0(s3)
    80006f8c:	00840793          	addi	a5,s0,8
    80006f90:	f6f43c23          	sd	a5,-136(s0)
    80006f94:	00000493          	li	s1,0
    80006f98:	22050063          	beqz	a0,800071b8 <__printf+0x2a0>
    80006f9c:	00002a37          	lui	s4,0x2
    80006fa0:	00018ab7          	lui	s5,0x18
    80006fa4:	000f4b37          	lui	s6,0xf4
    80006fa8:	00989bb7          	lui	s7,0x989
    80006fac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006fb0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006fb4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006fb8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006fbc:	00148c9b          	addiw	s9,s1,1
    80006fc0:	02500793          	li	a5,37
    80006fc4:	01998933          	add	s2,s3,s9
    80006fc8:	38f51263          	bne	a0,a5,8000734c <__printf+0x434>
    80006fcc:	00094783          	lbu	a5,0(s2)
    80006fd0:	00078c9b          	sext.w	s9,a5
    80006fd4:	1e078263          	beqz	a5,800071b8 <__printf+0x2a0>
    80006fd8:	0024849b          	addiw	s1,s1,2
    80006fdc:	07000713          	li	a4,112
    80006fe0:	00998933          	add	s2,s3,s1
    80006fe4:	38e78a63          	beq	a5,a4,80007378 <__printf+0x460>
    80006fe8:	20f76863          	bltu	a4,a5,800071f8 <__printf+0x2e0>
    80006fec:	42a78863          	beq	a5,a0,8000741c <__printf+0x504>
    80006ff0:	06400713          	li	a4,100
    80006ff4:	40e79663          	bne	a5,a4,80007400 <__printf+0x4e8>
    80006ff8:	f7843783          	ld	a5,-136(s0)
    80006ffc:	0007a603          	lw	a2,0(a5)
    80007000:	00878793          	addi	a5,a5,8
    80007004:	f6f43c23          	sd	a5,-136(s0)
    80007008:	42064a63          	bltz	a2,8000743c <__printf+0x524>
    8000700c:	00a00713          	li	a4,10
    80007010:	02e677bb          	remuw	a5,a2,a4
    80007014:	00002d97          	auipc	s11,0x2
    80007018:	7acd8d93          	addi	s11,s11,1964 # 800097c0 <digits>
    8000701c:	00900593          	li	a1,9
    80007020:	0006051b          	sext.w	a0,a2
    80007024:	00000c93          	li	s9,0
    80007028:	02079793          	slli	a5,a5,0x20
    8000702c:	0207d793          	srli	a5,a5,0x20
    80007030:	00fd87b3          	add	a5,s11,a5
    80007034:	0007c783          	lbu	a5,0(a5)
    80007038:	02e656bb          	divuw	a3,a2,a4
    8000703c:	f8f40023          	sb	a5,-128(s0)
    80007040:	14c5d863          	bge	a1,a2,80007190 <__printf+0x278>
    80007044:	06300593          	li	a1,99
    80007048:	00100c93          	li	s9,1
    8000704c:	02e6f7bb          	remuw	a5,a3,a4
    80007050:	02079793          	slli	a5,a5,0x20
    80007054:	0207d793          	srli	a5,a5,0x20
    80007058:	00fd87b3          	add	a5,s11,a5
    8000705c:	0007c783          	lbu	a5,0(a5)
    80007060:	02e6d73b          	divuw	a4,a3,a4
    80007064:	f8f400a3          	sb	a5,-127(s0)
    80007068:	12a5f463          	bgeu	a1,a0,80007190 <__printf+0x278>
    8000706c:	00a00693          	li	a3,10
    80007070:	00900593          	li	a1,9
    80007074:	02d777bb          	remuw	a5,a4,a3
    80007078:	02079793          	slli	a5,a5,0x20
    8000707c:	0207d793          	srli	a5,a5,0x20
    80007080:	00fd87b3          	add	a5,s11,a5
    80007084:	0007c503          	lbu	a0,0(a5)
    80007088:	02d757bb          	divuw	a5,a4,a3
    8000708c:	f8a40123          	sb	a0,-126(s0)
    80007090:	48e5f263          	bgeu	a1,a4,80007514 <__printf+0x5fc>
    80007094:	06300513          	li	a0,99
    80007098:	02d7f5bb          	remuw	a1,a5,a3
    8000709c:	02059593          	slli	a1,a1,0x20
    800070a0:	0205d593          	srli	a1,a1,0x20
    800070a4:	00bd85b3          	add	a1,s11,a1
    800070a8:	0005c583          	lbu	a1,0(a1)
    800070ac:	02d7d7bb          	divuw	a5,a5,a3
    800070b0:	f8b401a3          	sb	a1,-125(s0)
    800070b4:	48e57263          	bgeu	a0,a4,80007538 <__printf+0x620>
    800070b8:	3e700513          	li	a0,999
    800070bc:	02d7f5bb          	remuw	a1,a5,a3
    800070c0:	02059593          	slli	a1,a1,0x20
    800070c4:	0205d593          	srli	a1,a1,0x20
    800070c8:	00bd85b3          	add	a1,s11,a1
    800070cc:	0005c583          	lbu	a1,0(a1)
    800070d0:	02d7d7bb          	divuw	a5,a5,a3
    800070d4:	f8b40223          	sb	a1,-124(s0)
    800070d8:	46e57663          	bgeu	a0,a4,80007544 <__printf+0x62c>
    800070dc:	02d7f5bb          	remuw	a1,a5,a3
    800070e0:	02059593          	slli	a1,a1,0x20
    800070e4:	0205d593          	srli	a1,a1,0x20
    800070e8:	00bd85b3          	add	a1,s11,a1
    800070ec:	0005c583          	lbu	a1,0(a1)
    800070f0:	02d7d7bb          	divuw	a5,a5,a3
    800070f4:	f8b402a3          	sb	a1,-123(s0)
    800070f8:	46ea7863          	bgeu	s4,a4,80007568 <__printf+0x650>
    800070fc:	02d7f5bb          	remuw	a1,a5,a3
    80007100:	02059593          	slli	a1,a1,0x20
    80007104:	0205d593          	srli	a1,a1,0x20
    80007108:	00bd85b3          	add	a1,s11,a1
    8000710c:	0005c583          	lbu	a1,0(a1)
    80007110:	02d7d7bb          	divuw	a5,a5,a3
    80007114:	f8b40323          	sb	a1,-122(s0)
    80007118:	3eeaf863          	bgeu	s5,a4,80007508 <__printf+0x5f0>
    8000711c:	02d7f5bb          	remuw	a1,a5,a3
    80007120:	02059593          	slli	a1,a1,0x20
    80007124:	0205d593          	srli	a1,a1,0x20
    80007128:	00bd85b3          	add	a1,s11,a1
    8000712c:	0005c583          	lbu	a1,0(a1)
    80007130:	02d7d7bb          	divuw	a5,a5,a3
    80007134:	f8b403a3          	sb	a1,-121(s0)
    80007138:	42eb7e63          	bgeu	s6,a4,80007574 <__printf+0x65c>
    8000713c:	02d7f5bb          	remuw	a1,a5,a3
    80007140:	02059593          	slli	a1,a1,0x20
    80007144:	0205d593          	srli	a1,a1,0x20
    80007148:	00bd85b3          	add	a1,s11,a1
    8000714c:	0005c583          	lbu	a1,0(a1)
    80007150:	02d7d7bb          	divuw	a5,a5,a3
    80007154:	f8b40423          	sb	a1,-120(s0)
    80007158:	42ebfc63          	bgeu	s7,a4,80007590 <__printf+0x678>
    8000715c:	02079793          	slli	a5,a5,0x20
    80007160:	0207d793          	srli	a5,a5,0x20
    80007164:	00fd8db3          	add	s11,s11,a5
    80007168:	000dc703          	lbu	a4,0(s11)
    8000716c:	00a00793          	li	a5,10
    80007170:	00900c93          	li	s9,9
    80007174:	f8e404a3          	sb	a4,-119(s0)
    80007178:	00065c63          	bgez	a2,80007190 <__printf+0x278>
    8000717c:	f9040713          	addi	a4,s0,-112
    80007180:	00f70733          	add	a4,a4,a5
    80007184:	02d00693          	li	a3,45
    80007188:	fed70823          	sb	a3,-16(a4)
    8000718c:	00078c93          	mv	s9,a5
    80007190:	f8040793          	addi	a5,s0,-128
    80007194:	01978cb3          	add	s9,a5,s9
    80007198:	f7f40d13          	addi	s10,s0,-129
    8000719c:	000cc503          	lbu	a0,0(s9)
    800071a0:	fffc8c93          	addi	s9,s9,-1
    800071a4:	00000097          	auipc	ra,0x0
    800071a8:	b90080e7          	jalr	-1136(ra) # 80006d34 <consputc>
    800071ac:	ffac98e3          	bne	s9,s10,8000719c <__printf+0x284>
    800071b0:	00094503          	lbu	a0,0(s2)
    800071b4:	e00514e3          	bnez	a0,80006fbc <__printf+0xa4>
    800071b8:	1a0c1663          	bnez	s8,80007364 <__printf+0x44c>
    800071bc:	08813083          	ld	ra,136(sp)
    800071c0:	08013403          	ld	s0,128(sp)
    800071c4:	07813483          	ld	s1,120(sp)
    800071c8:	07013903          	ld	s2,112(sp)
    800071cc:	06813983          	ld	s3,104(sp)
    800071d0:	06013a03          	ld	s4,96(sp)
    800071d4:	05813a83          	ld	s5,88(sp)
    800071d8:	05013b03          	ld	s6,80(sp)
    800071dc:	04813b83          	ld	s7,72(sp)
    800071e0:	04013c03          	ld	s8,64(sp)
    800071e4:	03813c83          	ld	s9,56(sp)
    800071e8:	03013d03          	ld	s10,48(sp)
    800071ec:	02813d83          	ld	s11,40(sp)
    800071f0:	0d010113          	addi	sp,sp,208
    800071f4:	00008067          	ret
    800071f8:	07300713          	li	a4,115
    800071fc:	1ce78a63          	beq	a5,a4,800073d0 <__printf+0x4b8>
    80007200:	07800713          	li	a4,120
    80007204:	1ee79e63          	bne	a5,a4,80007400 <__printf+0x4e8>
    80007208:	f7843783          	ld	a5,-136(s0)
    8000720c:	0007a703          	lw	a4,0(a5)
    80007210:	00878793          	addi	a5,a5,8
    80007214:	f6f43c23          	sd	a5,-136(s0)
    80007218:	28074263          	bltz	a4,8000749c <__printf+0x584>
    8000721c:	00002d97          	auipc	s11,0x2
    80007220:	5a4d8d93          	addi	s11,s11,1444 # 800097c0 <digits>
    80007224:	00f77793          	andi	a5,a4,15
    80007228:	00fd87b3          	add	a5,s11,a5
    8000722c:	0007c683          	lbu	a3,0(a5)
    80007230:	00f00613          	li	a2,15
    80007234:	0007079b          	sext.w	a5,a4
    80007238:	f8d40023          	sb	a3,-128(s0)
    8000723c:	0047559b          	srliw	a1,a4,0x4
    80007240:	0047569b          	srliw	a3,a4,0x4
    80007244:	00000c93          	li	s9,0
    80007248:	0ee65063          	bge	a2,a4,80007328 <__printf+0x410>
    8000724c:	00f6f693          	andi	a3,a3,15
    80007250:	00dd86b3          	add	a3,s11,a3
    80007254:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007258:	0087d79b          	srliw	a5,a5,0x8
    8000725c:	00100c93          	li	s9,1
    80007260:	f8d400a3          	sb	a3,-127(s0)
    80007264:	0cb67263          	bgeu	a2,a1,80007328 <__printf+0x410>
    80007268:	00f7f693          	andi	a3,a5,15
    8000726c:	00dd86b3          	add	a3,s11,a3
    80007270:	0006c583          	lbu	a1,0(a3)
    80007274:	00f00613          	li	a2,15
    80007278:	0047d69b          	srliw	a3,a5,0x4
    8000727c:	f8b40123          	sb	a1,-126(s0)
    80007280:	0047d593          	srli	a1,a5,0x4
    80007284:	28f67e63          	bgeu	a2,a5,80007520 <__printf+0x608>
    80007288:	00f6f693          	andi	a3,a3,15
    8000728c:	00dd86b3          	add	a3,s11,a3
    80007290:	0006c503          	lbu	a0,0(a3)
    80007294:	0087d813          	srli	a6,a5,0x8
    80007298:	0087d69b          	srliw	a3,a5,0x8
    8000729c:	f8a401a3          	sb	a0,-125(s0)
    800072a0:	28b67663          	bgeu	a2,a1,8000752c <__printf+0x614>
    800072a4:	00f6f693          	andi	a3,a3,15
    800072a8:	00dd86b3          	add	a3,s11,a3
    800072ac:	0006c583          	lbu	a1,0(a3)
    800072b0:	00c7d513          	srli	a0,a5,0xc
    800072b4:	00c7d69b          	srliw	a3,a5,0xc
    800072b8:	f8b40223          	sb	a1,-124(s0)
    800072bc:	29067a63          	bgeu	a2,a6,80007550 <__printf+0x638>
    800072c0:	00f6f693          	andi	a3,a3,15
    800072c4:	00dd86b3          	add	a3,s11,a3
    800072c8:	0006c583          	lbu	a1,0(a3)
    800072cc:	0107d813          	srli	a6,a5,0x10
    800072d0:	0107d69b          	srliw	a3,a5,0x10
    800072d4:	f8b402a3          	sb	a1,-123(s0)
    800072d8:	28a67263          	bgeu	a2,a0,8000755c <__printf+0x644>
    800072dc:	00f6f693          	andi	a3,a3,15
    800072e0:	00dd86b3          	add	a3,s11,a3
    800072e4:	0006c683          	lbu	a3,0(a3)
    800072e8:	0147d79b          	srliw	a5,a5,0x14
    800072ec:	f8d40323          	sb	a3,-122(s0)
    800072f0:	21067663          	bgeu	a2,a6,800074fc <__printf+0x5e4>
    800072f4:	02079793          	slli	a5,a5,0x20
    800072f8:	0207d793          	srli	a5,a5,0x20
    800072fc:	00fd8db3          	add	s11,s11,a5
    80007300:	000dc683          	lbu	a3,0(s11)
    80007304:	00800793          	li	a5,8
    80007308:	00700c93          	li	s9,7
    8000730c:	f8d403a3          	sb	a3,-121(s0)
    80007310:	00075c63          	bgez	a4,80007328 <__printf+0x410>
    80007314:	f9040713          	addi	a4,s0,-112
    80007318:	00f70733          	add	a4,a4,a5
    8000731c:	02d00693          	li	a3,45
    80007320:	fed70823          	sb	a3,-16(a4)
    80007324:	00078c93          	mv	s9,a5
    80007328:	f8040793          	addi	a5,s0,-128
    8000732c:	01978cb3          	add	s9,a5,s9
    80007330:	f7f40d13          	addi	s10,s0,-129
    80007334:	000cc503          	lbu	a0,0(s9)
    80007338:	fffc8c93          	addi	s9,s9,-1
    8000733c:	00000097          	auipc	ra,0x0
    80007340:	9f8080e7          	jalr	-1544(ra) # 80006d34 <consputc>
    80007344:	ff9d18e3          	bne	s10,s9,80007334 <__printf+0x41c>
    80007348:	0100006f          	j	80007358 <__printf+0x440>
    8000734c:	00000097          	auipc	ra,0x0
    80007350:	9e8080e7          	jalr	-1560(ra) # 80006d34 <consputc>
    80007354:	000c8493          	mv	s1,s9
    80007358:	00094503          	lbu	a0,0(s2)
    8000735c:	c60510e3          	bnez	a0,80006fbc <__printf+0xa4>
    80007360:	e40c0ee3          	beqz	s8,800071bc <__printf+0x2a4>
    80007364:	0000a517          	auipc	a0,0xa
    80007368:	9dc50513          	addi	a0,a0,-1572 # 80010d40 <pr>
    8000736c:	00001097          	auipc	ra,0x1
    80007370:	94c080e7          	jalr	-1716(ra) # 80007cb8 <release>
    80007374:	e49ff06f          	j	800071bc <__printf+0x2a4>
    80007378:	f7843783          	ld	a5,-136(s0)
    8000737c:	03000513          	li	a0,48
    80007380:	01000d13          	li	s10,16
    80007384:	00878713          	addi	a4,a5,8
    80007388:	0007bc83          	ld	s9,0(a5)
    8000738c:	f6e43c23          	sd	a4,-136(s0)
    80007390:	00000097          	auipc	ra,0x0
    80007394:	9a4080e7          	jalr	-1628(ra) # 80006d34 <consputc>
    80007398:	07800513          	li	a0,120
    8000739c:	00000097          	auipc	ra,0x0
    800073a0:	998080e7          	jalr	-1640(ra) # 80006d34 <consputc>
    800073a4:	00002d97          	auipc	s11,0x2
    800073a8:	41cd8d93          	addi	s11,s11,1052 # 800097c0 <digits>
    800073ac:	03ccd793          	srli	a5,s9,0x3c
    800073b0:	00fd87b3          	add	a5,s11,a5
    800073b4:	0007c503          	lbu	a0,0(a5)
    800073b8:	fffd0d1b          	addiw	s10,s10,-1
    800073bc:	004c9c93          	slli	s9,s9,0x4
    800073c0:	00000097          	auipc	ra,0x0
    800073c4:	974080e7          	jalr	-1676(ra) # 80006d34 <consputc>
    800073c8:	fe0d12e3          	bnez	s10,800073ac <__printf+0x494>
    800073cc:	f8dff06f          	j	80007358 <__printf+0x440>
    800073d0:	f7843783          	ld	a5,-136(s0)
    800073d4:	0007bc83          	ld	s9,0(a5)
    800073d8:	00878793          	addi	a5,a5,8
    800073dc:	f6f43c23          	sd	a5,-136(s0)
    800073e0:	000c9a63          	bnez	s9,800073f4 <__printf+0x4dc>
    800073e4:	1080006f          	j	800074ec <__printf+0x5d4>
    800073e8:	001c8c93          	addi	s9,s9,1
    800073ec:	00000097          	auipc	ra,0x0
    800073f0:	948080e7          	jalr	-1720(ra) # 80006d34 <consputc>
    800073f4:	000cc503          	lbu	a0,0(s9)
    800073f8:	fe0518e3          	bnez	a0,800073e8 <__printf+0x4d0>
    800073fc:	f5dff06f          	j	80007358 <__printf+0x440>
    80007400:	02500513          	li	a0,37
    80007404:	00000097          	auipc	ra,0x0
    80007408:	930080e7          	jalr	-1744(ra) # 80006d34 <consputc>
    8000740c:	000c8513          	mv	a0,s9
    80007410:	00000097          	auipc	ra,0x0
    80007414:	924080e7          	jalr	-1756(ra) # 80006d34 <consputc>
    80007418:	f41ff06f          	j	80007358 <__printf+0x440>
    8000741c:	02500513          	li	a0,37
    80007420:	00000097          	auipc	ra,0x0
    80007424:	914080e7          	jalr	-1772(ra) # 80006d34 <consputc>
    80007428:	f31ff06f          	j	80007358 <__printf+0x440>
    8000742c:	00030513          	mv	a0,t1
    80007430:	00000097          	auipc	ra,0x0
    80007434:	7bc080e7          	jalr	1980(ra) # 80007bec <acquire>
    80007438:	b4dff06f          	j	80006f84 <__printf+0x6c>
    8000743c:	40c0053b          	negw	a0,a2
    80007440:	00a00713          	li	a4,10
    80007444:	02e576bb          	remuw	a3,a0,a4
    80007448:	00002d97          	auipc	s11,0x2
    8000744c:	378d8d93          	addi	s11,s11,888 # 800097c0 <digits>
    80007450:	ff700593          	li	a1,-9
    80007454:	02069693          	slli	a3,a3,0x20
    80007458:	0206d693          	srli	a3,a3,0x20
    8000745c:	00dd86b3          	add	a3,s11,a3
    80007460:	0006c683          	lbu	a3,0(a3)
    80007464:	02e557bb          	divuw	a5,a0,a4
    80007468:	f8d40023          	sb	a3,-128(s0)
    8000746c:	10b65e63          	bge	a2,a1,80007588 <__printf+0x670>
    80007470:	06300593          	li	a1,99
    80007474:	02e7f6bb          	remuw	a3,a5,a4
    80007478:	02069693          	slli	a3,a3,0x20
    8000747c:	0206d693          	srli	a3,a3,0x20
    80007480:	00dd86b3          	add	a3,s11,a3
    80007484:	0006c683          	lbu	a3,0(a3)
    80007488:	02e7d73b          	divuw	a4,a5,a4
    8000748c:	00200793          	li	a5,2
    80007490:	f8d400a3          	sb	a3,-127(s0)
    80007494:	bca5ece3          	bltu	a1,a0,8000706c <__printf+0x154>
    80007498:	ce5ff06f          	j	8000717c <__printf+0x264>
    8000749c:	40e007bb          	negw	a5,a4
    800074a0:	00002d97          	auipc	s11,0x2
    800074a4:	320d8d93          	addi	s11,s11,800 # 800097c0 <digits>
    800074a8:	00f7f693          	andi	a3,a5,15
    800074ac:	00dd86b3          	add	a3,s11,a3
    800074b0:	0006c583          	lbu	a1,0(a3)
    800074b4:	ff100613          	li	a2,-15
    800074b8:	0047d69b          	srliw	a3,a5,0x4
    800074bc:	f8b40023          	sb	a1,-128(s0)
    800074c0:	0047d59b          	srliw	a1,a5,0x4
    800074c4:	0ac75e63          	bge	a4,a2,80007580 <__printf+0x668>
    800074c8:	00f6f693          	andi	a3,a3,15
    800074cc:	00dd86b3          	add	a3,s11,a3
    800074d0:	0006c603          	lbu	a2,0(a3)
    800074d4:	00f00693          	li	a3,15
    800074d8:	0087d79b          	srliw	a5,a5,0x8
    800074dc:	f8c400a3          	sb	a2,-127(s0)
    800074e0:	d8b6e4e3          	bltu	a3,a1,80007268 <__printf+0x350>
    800074e4:	00200793          	li	a5,2
    800074e8:	e2dff06f          	j	80007314 <__printf+0x3fc>
    800074ec:	00002c97          	auipc	s9,0x2
    800074f0:	2b4c8c93          	addi	s9,s9,692 # 800097a0 <CONSOLE_STATUS+0x790>
    800074f4:	02800513          	li	a0,40
    800074f8:	ef1ff06f          	j	800073e8 <__printf+0x4d0>
    800074fc:	00700793          	li	a5,7
    80007500:	00600c93          	li	s9,6
    80007504:	e0dff06f          	j	80007310 <__printf+0x3f8>
    80007508:	00700793          	li	a5,7
    8000750c:	00600c93          	li	s9,6
    80007510:	c69ff06f          	j	80007178 <__printf+0x260>
    80007514:	00300793          	li	a5,3
    80007518:	00200c93          	li	s9,2
    8000751c:	c5dff06f          	j	80007178 <__printf+0x260>
    80007520:	00300793          	li	a5,3
    80007524:	00200c93          	li	s9,2
    80007528:	de9ff06f          	j	80007310 <__printf+0x3f8>
    8000752c:	00400793          	li	a5,4
    80007530:	00300c93          	li	s9,3
    80007534:	dddff06f          	j	80007310 <__printf+0x3f8>
    80007538:	00400793          	li	a5,4
    8000753c:	00300c93          	li	s9,3
    80007540:	c39ff06f          	j	80007178 <__printf+0x260>
    80007544:	00500793          	li	a5,5
    80007548:	00400c93          	li	s9,4
    8000754c:	c2dff06f          	j	80007178 <__printf+0x260>
    80007550:	00500793          	li	a5,5
    80007554:	00400c93          	li	s9,4
    80007558:	db9ff06f          	j	80007310 <__printf+0x3f8>
    8000755c:	00600793          	li	a5,6
    80007560:	00500c93          	li	s9,5
    80007564:	dadff06f          	j	80007310 <__printf+0x3f8>
    80007568:	00600793          	li	a5,6
    8000756c:	00500c93          	li	s9,5
    80007570:	c09ff06f          	j	80007178 <__printf+0x260>
    80007574:	00800793          	li	a5,8
    80007578:	00700c93          	li	s9,7
    8000757c:	bfdff06f          	j	80007178 <__printf+0x260>
    80007580:	00100793          	li	a5,1
    80007584:	d91ff06f          	j	80007314 <__printf+0x3fc>
    80007588:	00100793          	li	a5,1
    8000758c:	bf1ff06f          	j	8000717c <__printf+0x264>
    80007590:	00900793          	li	a5,9
    80007594:	00800c93          	li	s9,8
    80007598:	be1ff06f          	j	80007178 <__printf+0x260>
    8000759c:	00002517          	auipc	a0,0x2
    800075a0:	20c50513          	addi	a0,a0,524 # 800097a8 <CONSOLE_STATUS+0x798>
    800075a4:	00000097          	auipc	ra,0x0
    800075a8:	918080e7          	jalr	-1768(ra) # 80006ebc <panic>

00000000800075ac <printfinit>:
    800075ac:	fe010113          	addi	sp,sp,-32
    800075b0:	00813823          	sd	s0,16(sp)
    800075b4:	00913423          	sd	s1,8(sp)
    800075b8:	00113c23          	sd	ra,24(sp)
    800075bc:	02010413          	addi	s0,sp,32
    800075c0:	00009497          	auipc	s1,0x9
    800075c4:	78048493          	addi	s1,s1,1920 # 80010d40 <pr>
    800075c8:	00048513          	mv	a0,s1
    800075cc:	00002597          	auipc	a1,0x2
    800075d0:	1ec58593          	addi	a1,a1,492 # 800097b8 <CONSOLE_STATUS+0x7a8>
    800075d4:	00000097          	auipc	ra,0x0
    800075d8:	5f4080e7          	jalr	1524(ra) # 80007bc8 <initlock>
    800075dc:	01813083          	ld	ra,24(sp)
    800075e0:	01013403          	ld	s0,16(sp)
    800075e4:	0004ac23          	sw	zero,24(s1)
    800075e8:	00813483          	ld	s1,8(sp)
    800075ec:	02010113          	addi	sp,sp,32
    800075f0:	00008067          	ret

00000000800075f4 <uartinit>:
    800075f4:	ff010113          	addi	sp,sp,-16
    800075f8:	00813423          	sd	s0,8(sp)
    800075fc:	01010413          	addi	s0,sp,16
    80007600:	100007b7          	lui	a5,0x10000
    80007604:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007608:	f8000713          	li	a4,-128
    8000760c:	00e781a3          	sb	a4,3(a5)
    80007610:	00300713          	li	a4,3
    80007614:	00e78023          	sb	a4,0(a5)
    80007618:	000780a3          	sb	zero,1(a5)
    8000761c:	00e781a3          	sb	a4,3(a5)
    80007620:	00700693          	li	a3,7
    80007624:	00d78123          	sb	a3,2(a5)
    80007628:	00e780a3          	sb	a4,1(a5)
    8000762c:	00813403          	ld	s0,8(sp)
    80007630:	01010113          	addi	sp,sp,16
    80007634:	00008067          	ret

0000000080007638 <uartputc>:
    80007638:	00004797          	auipc	a5,0x4
    8000763c:	4007a783          	lw	a5,1024(a5) # 8000ba38 <panicked>
    80007640:	00078463          	beqz	a5,80007648 <uartputc+0x10>
    80007644:	0000006f          	j	80007644 <uartputc+0xc>
    80007648:	fd010113          	addi	sp,sp,-48
    8000764c:	02813023          	sd	s0,32(sp)
    80007650:	00913c23          	sd	s1,24(sp)
    80007654:	01213823          	sd	s2,16(sp)
    80007658:	01313423          	sd	s3,8(sp)
    8000765c:	02113423          	sd	ra,40(sp)
    80007660:	03010413          	addi	s0,sp,48
    80007664:	00004917          	auipc	s2,0x4
    80007668:	3dc90913          	addi	s2,s2,988 # 8000ba40 <uart_tx_r>
    8000766c:	00093783          	ld	a5,0(s2)
    80007670:	00004497          	auipc	s1,0x4
    80007674:	3d848493          	addi	s1,s1,984 # 8000ba48 <uart_tx_w>
    80007678:	0004b703          	ld	a4,0(s1)
    8000767c:	02078693          	addi	a3,a5,32
    80007680:	00050993          	mv	s3,a0
    80007684:	02e69c63          	bne	a3,a4,800076bc <uartputc+0x84>
    80007688:	00001097          	auipc	ra,0x1
    8000768c:	834080e7          	jalr	-1996(ra) # 80007ebc <push_on>
    80007690:	00093783          	ld	a5,0(s2)
    80007694:	0004b703          	ld	a4,0(s1)
    80007698:	02078793          	addi	a5,a5,32
    8000769c:	00e79463          	bne	a5,a4,800076a4 <uartputc+0x6c>
    800076a0:	0000006f          	j	800076a0 <uartputc+0x68>
    800076a4:	00001097          	auipc	ra,0x1
    800076a8:	88c080e7          	jalr	-1908(ra) # 80007f30 <pop_on>
    800076ac:	00093783          	ld	a5,0(s2)
    800076b0:	0004b703          	ld	a4,0(s1)
    800076b4:	02078693          	addi	a3,a5,32
    800076b8:	fce688e3          	beq	a3,a4,80007688 <uartputc+0x50>
    800076bc:	01f77693          	andi	a3,a4,31
    800076c0:	00009597          	auipc	a1,0x9
    800076c4:	6a058593          	addi	a1,a1,1696 # 80010d60 <uart_tx_buf>
    800076c8:	00d586b3          	add	a3,a1,a3
    800076cc:	00170713          	addi	a4,a4,1
    800076d0:	01368023          	sb	s3,0(a3)
    800076d4:	00e4b023          	sd	a4,0(s1)
    800076d8:	10000637          	lui	a2,0x10000
    800076dc:	02f71063          	bne	a4,a5,800076fc <uartputc+0xc4>
    800076e0:	0340006f          	j	80007714 <uartputc+0xdc>
    800076e4:	00074703          	lbu	a4,0(a4)
    800076e8:	00f93023          	sd	a5,0(s2)
    800076ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800076f0:	00093783          	ld	a5,0(s2)
    800076f4:	0004b703          	ld	a4,0(s1)
    800076f8:	00f70e63          	beq	a4,a5,80007714 <uartputc+0xdc>
    800076fc:	00564683          	lbu	a3,5(a2)
    80007700:	01f7f713          	andi	a4,a5,31
    80007704:	00e58733          	add	a4,a1,a4
    80007708:	0206f693          	andi	a3,a3,32
    8000770c:	00178793          	addi	a5,a5,1
    80007710:	fc069ae3          	bnez	a3,800076e4 <uartputc+0xac>
    80007714:	02813083          	ld	ra,40(sp)
    80007718:	02013403          	ld	s0,32(sp)
    8000771c:	01813483          	ld	s1,24(sp)
    80007720:	01013903          	ld	s2,16(sp)
    80007724:	00813983          	ld	s3,8(sp)
    80007728:	03010113          	addi	sp,sp,48
    8000772c:	00008067          	ret

0000000080007730 <uartputc_sync>:
    80007730:	ff010113          	addi	sp,sp,-16
    80007734:	00813423          	sd	s0,8(sp)
    80007738:	01010413          	addi	s0,sp,16
    8000773c:	00004717          	auipc	a4,0x4
    80007740:	2fc72703          	lw	a4,764(a4) # 8000ba38 <panicked>
    80007744:	02071663          	bnez	a4,80007770 <uartputc_sync+0x40>
    80007748:	00050793          	mv	a5,a0
    8000774c:	100006b7          	lui	a3,0x10000
    80007750:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007754:	02077713          	andi	a4,a4,32
    80007758:	fe070ce3          	beqz	a4,80007750 <uartputc_sync+0x20>
    8000775c:	0ff7f793          	andi	a5,a5,255
    80007760:	00f68023          	sb	a5,0(a3)
    80007764:	00813403          	ld	s0,8(sp)
    80007768:	01010113          	addi	sp,sp,16
    8000776c:	00008067          	ret
    80007770:	0000006f          	j	80007770 <uartputc_sync+0x40>

0000000080007774 <uartstart>:
    80007774:	ff010113          	addi	sp,sp,-16
    80007778:	00813423          	sd	s0,8(sp)
    8000777c:	01010413          	addi	s0,sp,16
    80007780:	00004617          	auipc	a2,0x4
    80007784:	2c060613          	addi	a2,a2,704 # 8000ba40 <uart_tx_r>
    80007788:	00004517          	auipc	a0,0x4
    8000778c:	2c050513          	addi	a0,a0,704 # 8000ba48 <uart_tx_w>
    80007790:	00063783          	ld	a5,0(a2)
    80007794:	00053703          	ld	a4,0(a0)
    80007798:	04f70263          	beq	a4,a5,800077dc <uartstart+0x68>
    8000779c:	100005b7          	lui	a1,0x10000
    800077a0:	00009817          	auipc	a6,0x9
    800077a4:	5c080813          	addi	a6,a6,1472 # 80010d60 <uart_tx_buf>
    800077a8:	01c0006f          	j	800077c4 <uartstart+0x50>
    800077ac:	0006c703          	lbu	a4,0(a3)
    800077b0:	00f63023          	sd	a5,0(a2)
    800077b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077b8:	00063783          	ld	a5,0(a2)
    800077bc:	00053703          	ld	a4,0(a0)
    800077c0:	00f70e63          	beq	a4,a5,800077dc <uartstart+0x68>
    800077c4:	01f7f713          	andi	a4,a5,31
    800077c8:	00e806b3          	add	a3,a6,a4
    800077cc:	0055c703          	lbu	a4,5(a1)
    800077d0:	00178793          	addi	a5,a5,1
    800077d4:	02077713          	andi	a4,a4,32
    800077d8:	fc071ae3          	bnez	a4,800077ac <uartstart+0x38>
    800077dc:	00813403          	ld	s0,8(sp)
    800077e0:	01010113          	addi	sp,sp,16
    800077e4:	00008067          	ret

00000000800077e8 <uartgetc>:
    800077e8:	ff010113          	addi	sp,sp,-16
    800077ec:	00813423          	sd	s0,8(sp)
    800077f0:	01010413          	addi	s0,sp,16
    800077f4:	10000737          	lui	a4,0x10000
    800077f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800077fc:	0017f793          	andi	a5,a5,1
    80007800:	00078c63          	beqz	a5,80007818 <uartgetc+0x30>
    80007804:	00074503          	lbu	a0,0(a4)
    80007808:	0ff57513          	andi	a0,a0,255
    8000780c:	00813403          	ld	s0,8(sp)
    80007810:	01010113          	addi	sp,sp,16
    80007814:	00008067          	ret
    80007818:	fff00513          	li	a0,-1
    8000781c:	ff1ff06f          	j	8000780c <uartgetc+0x24>

0000000080007820 <uartintr>:
    80007820:	100007b7          	lui	a5,0x10000
    80007824:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007828:	0017f793          	andi	a5,a5,1
    8000782c:	0a078463          	beqz	a5,800078d4 <uartintr+0xb4>
    80007830:	fe010113          	addi	sp,sp,-32
    80007834:	00813823          	sd	s0,16(sp)
    80007838:	00913423          	sd	s1,8(sp)
    8000783c:	00113c23          	sd	ra,24(sp)
    80007840:	02010413          	addi	s0,sp,32
    80007844:	100004b7          	lui	s1,0x10000
    80007848:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000784c:	0ff57513          	andi	a0,a0,255
    80007850:	fffff097          	auipc	ra,0xfffff
    80007854:	534080e7          	jalr	1332(ra) # 80006d84 <consoleintr>
    80007858:	0054c783          	lbu	a5,5(s1)
    8000785c:	0017f793          	andi	a5,a5,1
    80007860:	fe0794e3          	bnez	a5,80007848 <uartintr+0x28>
    80007864:	00004617          	auipc	a2,0x4
    80007868:	1dc60613          	addi	a2,a2,476 # 8000ba40 <uart_tx_r>
    8000786c:	00004517          	auipc	a0,0x4
    80007870:	1dc50513          	addi	a0,a0,476 # 8000ba48 <uart_tx_w>
    80007874:	00063783          	ld	a5,0(a2)
    80007878:	00053703          	ld	a4,0(a0)
    8000787c:	04f70263          	beq	a4,a5,800078c0 <uartintr+0xa0>
    80007880:	100005b7          	lui	a1,0x10000
    80007884:	00009817          	auipc	a6,0x9
    80007888:	4dc80813          	addi	a6,a6,1244 # 80010d60 <uart_tx_buf>
    8000788c:	01c0006f          	j	800078a8 <uartintr+0x88>
    80007890:	0006c703          	lbu	a4,0(a3)
    80007894:	00f63023          	sd	a5,0(a2)
    80007898:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000789c:	00063783          	ld	a5,0(a2)
    800078a0:	00053703          	ld	a4,0(a0)
    800078a4:	00f70e63          	beq	a4,a5,800078c0 <uartintr+0xa0>
    800078a8:	01f7f713          	andi	a4,a5,31
    800078ac:	00e806b3          	add	a3,a6,a4
    800078b0:	0055c703          	lbu	a4,5(a1)
    800078b4:	00178793          	addi	a5,a5,1
    800078b8:	02077713          	andi	a4,a4,32
    800078bc:	fc071ae3          	bnez	a4,80007890 <uartintr+0x70>
    800078c0:	01813083          	ld	ra,24(sp)
    800078c4:	01013403          	ld	s0,16(sp)
    800078c8:	00813483          	ld	s1,8(sp)
    800078cc:	02010113          	addi	sp,sp,32
    800078d0:	00008067          	ret
    800078d4:	00004617          	auipc	a2,0x4
    800078d8:	16c60613          	addi	a2,a2,364 # 8000ba40 <uart_tx_r>
    800078dc:	00004517          	auipc	a0,0x4
    800078e0:	16c50513          	addi	a0,a0,364 # 8000ba48 <uart_tx_w>
    800078e4:	00063783          	ld	a5,0(a2)
    800078e8:	00053703          	ld	a4,0(a0)
    800078ec:	04f70263          	beq	a4,a5,80007930 <uartintr+0x110>
    800078f0:	100005b7          	lui	a1,0x10000
    800078f4:	00009817          	auipc	a6,0x9
    800078f8:	46c80813          	addi	a6,a6,1132 # 80010d60 <uart_tx_buf>
    800078fc:	01c0006f          	j	80007918 <uartintr+0xf8>
    80007900:	0006c703          	lbu	a4,0(a3)
    80007904:	00f63023          	sd	a5,0(a2)
    80007908:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000790c:	00063783          	ld	a5,0(a2)
    80007910:	00053703          	ld	a4,0(a0)
    80007914:	02f70063          	beq	a4,a5,80007934 <uartintr+0x114>
    80007918:	01f7f713          	andi	a4,a5,31
    8000791c:	00e806b3          	add	a3,a6,a4
    80007920:	0055c703          	lbu	a4,5(a1)
    80007924:	00178793          	addi	a5,a5,1
    80007928:	02077713          	andi	a4,a4,32
    8000792c:	fc071ae3          	bnez	a4,80007900 <uartintr+0xe0>
    80007930:	00008067          	ret
    80007934:	00008067          	ret

0000000080007938 <kinit>:
    80007938:	fc010113          	addi	sp,sp,-64
    8000793c:	02913423          	sd	s1,40(sp)
    80007940:	fffff7b7          	lui	a5,0xfffff
    80007944:	0000a497          	auipc	s1,0xa
    80007948:	43b48493          	addi	s1,s1,1083 # 80011d7f <end+0xfff>
    8000794c:	02813823          	sd	s0,48(sp)
    80007950:	01313c23          	sd	s3,24(sp)
    80007954:	00f4f4b3          	and	s1,s1,a5
    80007958:	02113c23          	sd	ra,56(sp)
    8000795c:	03213023          	sd	s2,32(sp)
    80007960:	01413823          	sd	s4,16(sp)
    80007964:	01513423          	sd	s5,8(sp)
    80007968:	04010413          	addi	s0,sp,64
    8000796c:	000017b7          	lui	a5,0x1
    80007970:	01100993          	li	s3,17
    80007974:	00f487b3          	add	a5,s1,a5
    80007978:	01b99993          	slli	s3,s3,0x1b
    8000797c:	06f9e063          	bltu	s3,a5,800079dc <kinit+0xa4>
    80007980:	00009a97          	auipc	s5,0x9
    80007984:	400a8a93          	addi	s5,s5,1024 # 80010d80 <end>
    80007988:	0754ec63          	bltu	s1,s5,80007a00 <kinit+0xc8>
    8000798c:	0734fa63          	bgeu	s1,s3,80007a00 <kinit+0xc8>
    80007990:	00088a37          	lui	s4,0x88
    80007994:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007998:	00004917          	auipc	s2,0x4
    8000799c:	0b890913          	addi	s2,s2,184 # 8000ba50 <kmem>
    800079a0:	00ca1a13          	slli	s4,s4,0xc
    800079a4:	0140006f          	j	800079b8 <kinit+0x80>
    800079a8:	000017b7          	lui	a5,0x1
    800079ac:	00f484b3          	add	s1,s1,a5
    800079b0:	0554e863          	bltu	s1,s5,80007a00 <kinit+0xc8>
    800079b4:	0534f663          	bgeu	s1,s3,80007a00 <kinit+0xc8>
    800079b8:	00001637          	lui	a2,0x1
    800079bc:	00100593          	li	a1,1
    800079c0:	00048513          	mv	a0,s1
    800079c4:	00000097          	auipc	ra,0x0
    800079c8:	5e4080e7          	jalr	1508(ra) # 80007fa8 <__memset>
    800079cc:	00093783          	ld	a5,0(s2)
    800079d0:	00f4b023          	sd	a5,0(s1)
    800079d4:	00993023          	sd	s1,0(s2)
    800079d8:	fd4498e3          	bne	s1,s4,800079a8 <kinit+0x70>
    800079dc:	03813083          	ld	ra,56(sp)
    800079e0:	03013403          	ld	s0,48(sp)
    800079e4:	02813483          	ld	s1,40(sp)
    800079e8:	02013903          	ld	s2,32(sp)
    800079ec:	01813983          	ld	s3,24(sp)
    800079f0:	01013a03          	ld	s4,16(sp)
    800079f4:	00813a83          	ld	s5,8(sp)
    800079f8:	04010113          	addi	sp,sp,64
    800079fc:	00008067          	ret
    80007a00:	00002517          	auipc	a0,0x2
    80007a04:	dd850513          	addi	a0,a0,-552 # 800097d8 <digits+0x18>
    80007a08:	fffff097          	auipc	ra,0xfffff
    80007a0c:	4b4080e7          	jalr	1204(ra) # 80006ebc <panic>

0000000080007a10 <freerange>:
    80007a10:	fc010113          	addi	sp,sp,-64
    80007a14:	000017b7          	lui	a5,0x1
    80007a18:	02913423          	sd	s1,40(sp)
    80007a1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a20:	009504b3          	add	s1,a0,s1
    80007a24:	fffff537          	lui	a0,0xfffff
    80007a28:	02813823          	sd	s0,48(sp)
    80007a2c:	02113c23          	sd	ra,56(sp)
    80007a30:	03213023          	sd	s2,32(sp)
    80007a34:	01313c23          	sd	s3,24(sp)
    80007a38:	01413823          	sd	s4,16(sp)
    80007a3c:	01513423          	sd	s5,8(sp)
    80007a40:	01613023          	sd	s6,0(sp)
    80007a44:	04010413          	addi	s0,sp,64
    80007a48:	00a4f4b3          	and	s1,s1,a0
    80007a4c:	00f487b3          	add	a5,s1,a5
    80007a50:	06f5e463          	bltu	a1,a5,80007ab8 <freerange+0xa8>
    80007a54:	00009a97          	auipc	s5,0x9
    80007a58:	32ca8a93          	addi	s5,s5,812 # 80010d80 <end>
    80007a5c:	0954e263          	bltu	s1,s5,80007ae0 <freerange+0xd0>
    80007a60:	01100993          	li	s3,17
    80007a64:	01b99993          	slli	s3,s3,0x1b
    80007a68:	0734fc63          	bgeu	s1,s3,80007ae0 <freerange+0xd0>
    80007a6c:	00058a13          	mv	s4,a1
    80007a70:	00004917          	auipc	s2,0x4
    80007a74:	fe090913          	addi	s2,s2,-32 # 8000ba50 <kmem>
    80007a78:	00002b37          	lui	s6,0x2
    80007a7c:	0140006f          	j	80007a90 <freerange+0x80>
    80007a80:	000017b7          	lui	a5,0x1
    80007a84:	00f484b3          	add	s1,s1,a5
    80007a88:	0554ec63          	bltu	s1,s5,80007ae0 <freerange+0xd0>
    80007a8c:	0534fa63          	bgeu	s1,s3,80007ae0 <freerange+0xd0>
    80007a90:	00001637          	lui	a2,0x1
    80007a94:	00100593          	li	a1,1
    80007a98:	00048513          	mv	a0,s1
    80007a9c:	00000097          	auipc	ra,0x0
    80007aa0:	50c080e7          	jalr	1292(ra) # 80007fa8 <__memset>
    80007aa4:	00093703          	ld	a4,0(s2)
    80007aa8:	016487b3          	add	a5,s1,s6
    80007aac:	00e4b023          	sd	a4,0(s1)
    80007ab0:	00993023          	sd	s1,0(s2)
    80007ab4:	fcfa76e3          	bgeu	s4,a5,80007a80 <freerange+0x70>
    80007ab8:	03813083          	ld	ra,56(sp)
    80007abc:	03013403          	ld	s0,48(sp)
    80007ac0:	02813483          	ld	s1,40(sp)
    80007ac4:	02013903          	ld	s2,32(sp)
    80007ac8:	01813983          	ld	s3,24(sp)
    80007acc:	01013a03          	ld	s4,16(sp)
    80007ad0:	00813a83          	ld	s5,8(sp)
    80007ad4:	00013b03          	ld	s6,0(sp)
    80007ad8:	04010113          	addi	sp,sp,64
    80007adc:	00008067          	ret
    80007ae0:	00002517          	auipc	a0,0x2
    80007ae4:	cf850513          	addi	a0,a0,-776 # 800097d8 <digits+0x18>
    80007ae8:	fffff097          	auipc	ra,0xfffff
    80007aec:	3d4080e7          	jalr	980(ra) # 80006ebc <panic>

0000000080007af0 <kfree>:
    80007af0:	fe010113          	addi	sp,sp,-32
    80007af4:	00813823          	sd	s0,16(sp)
    80007af8:	00113c23          	sd	ra,24(sp)
    80007afc:	00913423          	sd	s1,8(sp)
    80007b00:	02010413          	addi	s0,sp,32
    80007b04:	03451793          	slli	a5,a0,0x34
    80007b08:	04079c63          	bnez	a5,80007b60 <kfree+0x70>
    80007b0c:	00009797          	auipc	a5,0x9
    80007b10:	27478793          	addi	a5,a5,628 # 80010d80 <end>
    80007b14:	00050493          	mv	s1,a0
    80007b18:	04f56463          	bltu	a0,a5,80007b60 <kfree+0x70>
    80007b1c:	01100793          	li	a5,17
    80007b20:	01b79793          	slli	a5,a5,0x1b
    80007b24:	02f57e63          	bgeu	a0,a5,80007b60 <kfree+0x70>
    80007b28:	00001637          	lui	a2,0x1
    80007b2c:	00100593          	li	a1,1
    80007b30:	00000097          	auipc	ra,0x0
    80007b34:	478080e7          	jalr	1144(ra) # 80007fa8 <__memset>
    80007b38:	00004797          	auipc	a5,0x4
    80007b3c:	f1878793          	addi	a5,a5,-232 # 8000ba50 <kmem>
    80007b40:	0007b703          	ld	a4,0(a5)
    80007b44:	01813083          	ld	ra,24(sp)
    80007b48:	01013403          	ld	s0,16(sp)
    80007b4c:	00e4b023          	sd	a4,0(s1)
    80007b50:	0097b023          	sd	s1,0(a5)
    80007b54:	00813483          	ld	s1,8(sp)
    80007b58:	02010113          	addi	sp,sp,32
    80007b5c:	00008067          	ret
    80007b60:	00002517          	auipc	a0,0x2
    80007b64:	c7850513          	addi	a0,a0,-904 # 800097d8 <digits+0x18>
    80007b68:	fffff097          	auipc	ra,0xfffff
    80007b6c:	354080e7          	jalr	852(ra) # 80006ebc <panic>

0000000080007b70 <kalloc>:
    80007b70:	fe010113          	addi	sp,sp,-32
    80007b74:	00813823          	sd	s0,16(sp)
    80007b78:	00913423          	sd	s1,8(sp)
    80007b7c:	00113c23          	sd	ra,24(sp)
    80007b80:	02010413          	addi	s0,sp,32
    80007b84:	00004797          	auipc	a5,0x4
    80007b88:	ecc78793          	addi	a5,a5,-308 # 8000ba50 <kmem>
    80007b8c:	0007b483          	ld	s1,0(a5)
    80007b90:	02048063          	beqz	s1,80007bb0 <kalloc+0x40>
    80007b94:	0004b703          	ld	a4,0(s1)
    80007b98:	00001637          	lui	a2,0x1
    80007b9c:	00500593          	li	a1,5
    80007ba0:	00048513          	mv	a0,s1
    80007ba4:	00e7b023          	sd	a4,0(a5)
    80007ba8:	00000097          	auipc	ra,0x0
    80007bac:	400080e7          	jalr	1024(ra) # 80007fa8 <__memset>
    80007bb0:	01813083          	ld	ra,24(sp)
    80007bb4:	01013403          	ld	s0,16(sp)
    80007bb8:	00048513          	mv	a0,s1
    80007bbc:	00813483          	ld	s1,8(sp)
    80007bc0:	02010113          	addi	sp,sp,32
    80007bc4:	00008067          	ret

0000000080007bc8 <initlock>:
    80007bc8:	ff010113          	addi	sp,sp,-16
    80007bcc:	00813423          	sd	s0,8(sp)
    80007bd0:	01010413          	addi	s0,sp,16
    80007bd4:	00813403          	ld	s0,8(sp)
    80007bd8:	00b53423          	sd	a1,8(a0)
    80007bdc:	00052023          	sw	zero,0(a0)
    80007be0:	00053823          	sd	zero,16(a0)
    80007be4:	01010113          	addi	sp,sp,16
    80007be8:	00008067          	ret

0000000080007bec <acquire>:
    80007bec:	fe010113          	addi	sp,sp,-32
    80007bf0:	00813823          	sd	s0,16(sp)
    80007bf4:	00913423          	sd	s1,8(sp)
    80007bf8:	00113c23          	sd	ra,24(sp)
    80007bfc:	01213023          	sd	s2,0(sp)
    80007c00:	02010413          	addi	s0,sp,32
    80007c04:	00050493          	mv	s1,a0
    80007c08:	10002973          	csrr	s2,sstatus
    80007c0c:	100027f3          	csrr	a5,sstatus
    80007c10:	ffd7f793          	andi	a5,a5,-3
    80007c14:	10079073          	csrw	sstatus,a5
    80007c18:	fffff097          	auipc	ra,0xfffff
    80007c1c:	8e4080e7          	jalr	-1820(ra) # 800064fc <mycpu>
    80007c20:	07852783          	lw	a5,120(a0)
    80007c24:	06078e63          	beqz	a5,80007ca0 <acquire+0xb4>
    80007c28:	fffff097          	auipc	ra,0xfffff
    80007c2c:	8d4080e7          	jalr	-1836(ra) # 800064fc <mycpu>
    80007c30:	07852783          	lw	a5,120(a0)
    80007c34:	0004a703          	lw	a4,0(s1)
    80007c38:	0017879b          	addiw	a5,a5,1
    80007c3c:	06f52c23          	sw	a5,120(a0)
    80007c40:	04071063          	bnez	a4,80007c80 <acquire+0x94>
    80007c44:	00100713          	li	a4,1
    80007c48:	00070793          	mv	a5,a4
    80007c4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007c50:	0007879b          	sext.w	a5,a5
    80007c54:	fe079ae3          	bnez	a5,80007c48 <acquire+0x5c>
    80007c58:	0ff0000f          	fence
    80007c5c:	fffff097          	auipc	ra,0xfffff
    80007c60:	8a0080e7          	jalr	-1888(ra) # 800064fc <mycpu>
    80007c64:	01813083          	ld	ra,24(sp)
    80007c68:	01013403          	ld	s0,16(sp)
    80007c6c:	00a4b823          	sd	a0,16(s1)
    80007c70:	00013903          	ld	s2,0(sp)
    80007c74:	00813483          	ld	s1,8(sp)
    80007c78:	02010113          	addi	sp,sp,32
    80007c7c:	00008067          	ret
    80007c80:	0104b903          	ld	s2,16(s1)
    80007c84:	fffff097          	auipc	ra,0xfffff
    80007c88:	878080e7          	jalr	-1928(ra) # 800064fc <mycpu>
    80007c8c:	faa91ce3          	bne	s2,a0,80007c44 <acquire+0x58>
    80007c90:	00002517          	auipc	a0,0x2
    80007c94:	b5050513          	addi	a0,a0,-1200 # 800097e0 <digits+0x20>
    80007c98:	fffff097          	auipc	ra,0xfffff
    80007c9c:	224080e7          	jalr	548(ra) # 80006ebc <panic>
    80007ca0:	00195913          	srli	s2,s2,0x1
    80007ca4:	fffff097          	auipc	ra,0xfffff
    80007ca8:	858080e7          	jalr	-1960(ra) # 800064fc <mycpu>
    80007cac:	00197913          	andi	s2,s2,1
    80007cb0:	07252e23          	sw	s2,124(a0)
    80007cb4:	f75ff06f          	j	80007c28 <acquire+0x3c>

0000000080007cb8 <release>:
    80007cb8:	fe010113          	addi	sp,sp,-32
    80007cbc:	00813823          	sd	s0,16(sp)
    80007cc0:	00113c23          	sd	ra,24(sp)
    80007cc4:	00913423          	sd	s1,8(sp)
    80007cc8:	01213023          	sd	s2,0(sp)
    80007ccc:	02010413          	addi	s0,sp,32
    80007cd0:	00052783          	lw	a5,0(a0)
    80007cd4:	00079a63          	bnez	a5,80007ce8 <release+0x30>
    80007cd8:	00002517          	auipc	a0,0x2
    80007cdc:	b1050513          	addi	a0,a0,-1264 # 800097e8 <digits+0x28>
    80007ce0:	fffff097          	auipc	ra,0xfffff
    80007ce4:	1dc080e7          	jalr	476(ra) # 80006ebc <panic>
    80007ce8:	01053903          	ld	s2,16(a0)
    80007cec:	00050493          	mv	s1,a0
    80007cf0:	fffff097          	auipc	ra,0xfffff
    80007cf4:	80c080e7          	jalr	-2036(ra) # 800064fc <mycpu>
    80007cf8:	fea910e3          	bne	s2,a0,80007cd8 <release+0x20>
    80007cfc:	0004b823          	sd	zero,16(s1)
    80007d00:	0ff0000f          	fence
    80007d04:	0f50000f          	fence	iorw,ow
    80007d08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007d0c:	ffffe097          	auipc	ra,0xffffe
    80007d10:	7f0080e7          	jalr	2032(ra) # 800064fc <mycpu>
    80007d14:	100027f3          	csrr	a5,sstatus
    80007d18:	0027f793          	andi	a5,a5,2
    80007d1c:	04079a63          	bnez	a5,80007d70 <release+0xb8>
    80007d20:	07852783          	lw	a5,120(a0)
    80007d24:	02f05e63          	blez	a5,80007d60 <release+0xa8>
    80007d28:	fff7871b          	addiw	a4,a5,-1
    80007d2c:	06e52c23          	sw	a4,120(a0)
    80007d30:	00071c63          	bnez	a4,80007d48 <release+0x90>
    80007d34:	07c52783          	lw	a5,124(a0)
    80007d38:	00078863          	beqz	a5,80007d48 <release+0x90>
    80007d3c:	100027f3          	csrr	a5,sstatus
    80007d40:	0027e793          	ori	a5,a5,2
    80007d44:	10079073          	csrw	sstatus,a5
    80007d48:	01813083          	ld	ra,24(sp)
    80007d4c:	01013403          	ld	s0,16(sp)
    80007d50:	00813483          	ld	s1,8(sp)
    80007d54:	00013903          	ld	s2,0(sp)
    80007d58:	02010113          	addi	sp,sp,32
    80007d5c:	00008067          	ret
    80007d60:	00002517          	auipc	a0,0x2
    80007d64:	aa850513          	addi	a0,a0,-1368 # 80009808 <digits+0x48>
    80007d68:	fffff097          	auipc	ra,0xfffff
    80007d6c:	154080e7          	jalr	340(ra) # 80006ebc <panic>
    80007d70:	00002517          	auipc	a0,0x2
    80007d74:	a8050513          	addi	a0,a0,-1408 # 800097f0 <digits+0x30>
    80007d78:	fffff097          	auipc	ra,0xfffff
    80007d7c:	144080e7          	jalr	324(ra) # 80006ebc <panic>

0000000080007d80 <holding>:
    80007d80:	00052783          	lw	a5,0(a0)
    80007d84:	00079663          	bnez	a5,80007d90 <holding+0x10>
    80007d88:	00000513          	li	a0,0
    80007d8c:	00008067          	ret
    80007d90:	fe010113          	addi	sp,sp,-32
    80007d94:	00813823          	sd	s0,16(sp)
    80007d98:	00913423          	sd	s1,8(sp)
    80007d9c:	00113c23          	sd	ra,24(sp)
    80007da0:	02010413          	addi	s0,sp,32
    80007da4:	01053483          	ld	s1,16(a0)
    80007da8:	ffffe097          	auipc	ra,0xffffe
    80007dac:	754080e7          	jalr	1876(ra) # 800064fc <mycpu>
    80007db0:	01813083          	ld	ra,24(sp)
    80007db4:	01013403          	ld	s0,16(sp)
    80007db8:	40a48533          	sub	a0,s1,a0
    80007dbc:	00153513          	seqz	a0,a0
    80007dc0:	00813483          	ld	s1,8(sp)
    80007dc4:	02010113          	addi	sp,sp,32
    80007dc8:	00008067          	ret

0000000080007dcc <push_off>:
    80007dcc:	fe010113          	addi	sp,sp,-32
    80007dd0:	00813823          	sd	s0,16(sp)
    80007dd4:	00113c23          	sd	ra,24(sp)
    80007dd8:	00913423          	sd	s1,8(sp)
    80007ddc:	02010413          	addi	s0,sp,32
    80007de0:	100024f3          	csrr	s1,sstatus
    80007de4:	100027f3          	csrr	a5,sstatus
    80007de8:	ffd7f793          	andi	a5,a5,-3
    80007dec:	10079073          	csrw	sstatus,a5
    80007df0:	ffffe097          	auipc	ra,0xffffe
    80007df4:	70c080e7          	jalr	1804(ra) # 800064fc <mycpu>
    80007df8:	07852783          	lw	a5,120(a0)
    80007dfc:	02078663          	beqz	a5,80007e28 <push_off+0x5c>
    80007e00:	ffffe097          	auipc	ra,0xffffe
    80007e04:	6fc080e7          	jalr	1788(ra) # 800064fc <mycpu>
    80007e08:	07852783          	lw	a5,120(a0)
    80007e0c:	01813083          	ld	ra,24(sp)
    80007e10:	01013403          	ld	s0,16(sp)
    80007e14:	0017879b          	addiw	a5,a5,1
    80007e18:	06f52c23          	sw	a5,120(a0)
    80007e1c:	00813483          	ld	s1,8(sp)
    80007e20:	02010113          	addi	sp,sp,32
    80007e24:	00008067          	ret
    80007e28:	0014d493          	srli	s1,s1,0x1
    80007e2c:	ffffe097          	auipc	ra,0xffffe
    80007e30:	6d0080e7          	jalr	1744(ra) # 800064fc <mycpu>
    80007e34:	0014f493          	andi	s1,s1,1
    80007e38:	06952e23          	sw	s1,124(a0)
    80007e3c:	fc5ff06f          	j	80007e00 <push_off+0x34>

0000000080007e40 <pop_off>:
    80007e40:	ff010113          	addi	sp,sp,-16
    80007e44:	00813023          	sd	s0,0(sp)
    80007e48:	00113423          	sd	ra,8(sp)
    80007e4c:	01010413          	addi	s0,sp,16
    80007e50:	ffffe097          	auipc	ra,0xffffe
    80007e54:	6ac080e7          	jalr	1708(ra) # 800064fc <mycpu>
    80007e58:	100027f3          	csrr	a5,sstatus
    80007e5c:	0027f793          	andi	a5,a5,2
    80007e60:	04079663          	bnez	a5,80007eac <pop_off+0x6c>
    80007e64:	07852783          	lw	a5,120(a0)
    80007e68:	02f05a63          	blez	a5,80007e9c <pop_off+0x5c>
    80007e6c:	fff7871b          	addiw	a4,a5,-1
    80007e70:	06e52c23          	sw	a4,120(a0)
    80007e74:	00071c63          	bnez	a4,80007e8c <pop_off+0x4c>
    80007e78:	07c52783          	lw	a5,124(a0)
    80007e7c:	00078863          	beqz	a5,80007e8c <pop_off+0x4c>
    80007e80:	100027f3          	csrr	a5,sstatus
    80007e84:	0027e793          	ori	a5,a5,2
    80007e88:	10079073          	csrw	sstatus,a5
    80007e8c:	00813083          	ld	ra,8(sp)
    80007e90:	00013403          	ld	s0,0(sp)
    80007e94:	01010113          	addi	sp,sp,16
    80007e98:	00008067          	ret
    80007e9c:	00002517          	auipc	a0,0x2
    80007ea0:	96c50513          	addi	a0,a0,-1684 # 80009808 <digits+0x48>
    80007ea4:	fffff097          	auipc	ra,0xfffff
    80007ea8:	018080e7          	jalr	24(ra) # 80006ebc <panic>
    80007eac:	00002517          	auipc	a0,0x2
    80007eb0:	94450513          	addi	a0,a0,-1724 # 800097f0 <digits+0x30>
    80007eb4:	fffff097          	auipc	ra,0xfffff
    80007eb8:	008080e7          	jalr	8(ra) # 80006ebc <panic>

0000000080007ebc <push_on>:
    80007ebc:	fe010113          	addi	sp,sp,-32
    80007ec0:	00813823          	sd	s0,16(sp)
    80007ec4:	00113c23          	sd	ra,24(sp)
    80007ec8:	00913423          	sd	s1,8(sp)
    80007ecc:	02010413          	addi	s0,sp,32
    80007ed0:	100024f3          	csrr	s1,sstatus
    80007ed4:	100027f3          	csrr	a5,sstatus
    80007ed8:	0027e793          	ori	a5,a5,2
    80007edc:	10079073          	csrw	sstatus,a5
    80007ee0:	ffffe097          	auipc	ra,0xffffe
    80007ee4:	61c080e7          	jalr	1564(ra) # 800064fc <mycpu>
    80007ee8:	07852783          	lw	a5,120(a0)
    80007eec:	02078663          	beqz	a5,80007f18 <push_on+0x5c>
    80007ef0:	ffffe097          	auipc	ra,0xffffe
    80007ef4:	60c080e7          	jalr	1548(ra) # 800064fc <mycpu>
    80007ef8:	07852783          	lw	a5,120(a0)
    80007efc:	01813083          	ld	ra,24(sp)
    80007f00:	01013403          	ld	s0,16(sp)
    80007f04:	0017879b          	addiw	a5,a5,1
    80007f08:	06f52c23          	sw	a5,120(a0)
    80007f0c:	00813483          	ld	s1,8(sp)
    80007f10:	02010113          	addi	sp,sp,32
    80007f14:	00008067          	ret
    80007f18:	0014d493          	srli	s1,s1,0x1
    80007f1c:	ffffe097          	auipc	ra,0xffffe
    80007f20:	5e0080e7          	jalr	1504(ra) # 800064fc <mycpu>
    80007f24:	0014f493          	andi	s1,s1,1
    80007f28:	06952e23          	sw	s1,124(a0)
    80007f2c:	fc5ff06f          	j	80007ef0 <push_on+0x34>

0000000080007f30 <pop_on>:
    80007f30:	ff010113          	addi	sp,sp,-16
    80007f34:	00813023          	sd	s0,0(sp)
    80007f38:	00113423          	sd	ra,8(sp)
    80007f3c:	01010413          	addi	s0,sp,16
    80007f40:	ffffe097          	auipc	ra,0xffffe
    80007f44:	5bc080e7          	jalr	1468(ra) # 800064fc <mycpu>
    80007f48:	100027f3          	csrr	a5,sstatus
    80007f4c:	0027f793          	andi	a5,a5,2
    80007f50:	04078463          	beqz	a5,80007f98 <pop_on+0x68>
    80007f54:	07852783          	lw	a5,120(a0)
    80007f58:	02f05863          	blez	a5,80007f88 <pop_on+0x58>
    80007f5c:	fff7879b          	addiw	a5,a5,-1
    80007f60:	06f52c23          	sw	a5,120(a0)
    80007f64:	07853783          	ld	a5,120(a0)
    80007f68:	00079863          	bnez	a5,80007f78 <pop_on+0x48>
    80007f6c:	100027f3          	csrr	a5,sstatus
    80007f70:	ffd7f793          	andi	a5,a5,-3
    80007f74:	10079073          	csrw	sstatus,a5
    80007f78:	00813083          	ld	ra,8(sp)
    80007f7c:	00013403          	ld	s0,0(sp)
    80007f80:	01010113          	addi	sp,sp,16
    80007f84:	00008067          	ret
    80007f88:	00002517          	auipc	a0,0x2
    80007f8c:	8a850513          	addi	a0,a0,-1880 # 80009830 <digits+0x70>
    80007f90:	fffff097          	auipc	ra,0xfffff
    80007f94:	f2c080e7          	jalr	-212(ra) # 80006ebc <panic>
    80007f98:	00002517          	auipc	a0,0x2
    80007f9c:	87850513          	addi	a0,a0,-1928 # 80009810 <digits+0x50>
    80007fa0:	fffff097          	auipc	ra,0xfffff
    80007fa4:	f1c080e7          	jalr	-228(ra) # 80006ebc <panic>

0000000080007fa8 <__memset>:
    80007fa8:	ff010113          	addi	sp,sp,-16
    80007fac:	00813423          	sd	s0,8(sp)
    80007fb0:	01010413          	addi	s0,sp,16
    80007fb4:	1a060e63          	beqz	a2,80008170 <__memset+0x1c8>
    80007fb8:	40a007b3          	neg	a5,a0
    80007fbc:	0077f793          	andi	a5,a5,7
    80007fc0:	00778693          	addi	a3,a5,7
    80007fc4:	00b00813          	li	a6,11
    80007fc8:	0ff5f593          	andi	a1,a1,255
    80007fcc:	fff6071b          	addiw	a4,a2,-1
    80007fd0:	1b06e663          	bltu	a3,a6,8000817c <__memset+0x1d4>
    80007fd4:	1cd76463          	bltu	a4,a3,8000819c <__memset+0x1f4>
    80007fd8:	1a078e63          	beqz	a5,80008194 <__memset+0x1ec>
    80007fdc:	00b50023          	sb	a1,0(a0)
    80007fe0:	00100713          	li	a4,1
    80007fe4:	1ae78463          	beq	a5,a4,8000818c <__memset+0x1e4>
    80007fe8:	00b500a3          	sb	a1,1(a0)
    80007fec:	00200713          	li	a4,2
    80007ff0:	1ae78a63          	beq	a5,a4,800081a4 <__memset+0x1fc>
    80007ff4:	00b50123          	sb	a1,2(a0)
    80007ff8:	00300713          	li	a4,3
    80007ffc:	18e78463          	beq	a5,a4,80008184 <__memset+0x1dc>
    80008000:	00b501a3          	sb	a1,3(a0)
    80008004:	00400713          	li	a4,4
    80008008:	1ae78263          	beq	a5,a4,800081ac <__memset+0x204>
    8000800c:	00b50223          	sb	a1,4(a0)
    80008010:	00500713          	li	a4,5
    80008014:	1ae78063          	beq	a5,a4,800081b4 <__memset+0x20c>
    80008018:	00b502a3          	sb	a1,5(a0)
    8000801c:	00700713          	li	a4,7
    80008020:	18e79e63          	bne	a5,a4,800081bc <__memset+0x214>
    80008024:	00b50323          	sb	a1,6(a0)
    80008028:	00700e93          	li	t4,7
    8000802c:	00859713          	slli	a4,a1,0x8
    80008030:	00e5e733          	or	a4,a1,a4
    80008034:	01059e13          	slli	t3,a1,0x10
    80008038:	01c76e33          	or	t3,a4,t3
    8000803c:	01859313          	slli	t1,a1,0x18
    80008040:	006e6333          	or	t1,t3,t1
    80008044:	02059893          	slli	a7,a1,0x20
    80008048:	40f60e3b          	subw	t3,a2,a5
    8000804c:	011368b3          	or	a7,t1,a7
    80008050:	02859813          	slli	a6,a1,0x28
    80008054:	0108e833          	or	a6,a7,a6
    80008058:	03059693          	slli	a3,a1,0x30
    8000805c:	003e589b          	srliw	a7,t3,0x3
    80008060:	00d866b3          	or	a3,a6,a3
    80008064:	03859713          	slli	a4,a1,0x38
    80008068:	00389813          	slli	a6,a7,0x3
    8000806c:	00f507b3          	add	a5,a0,a5
    80008070:	00e6e733          	or	a4,a3,a4
    80008074:	000e089b          	sext.w	a7,t3
    80008078:	00f806b3          	add	a3,a6,a5
    8000807c:	00e7b023          	sd	a4,0(a5)
    80008080:	00878793          	addi	a5,a5,8
    80008084:	fed79ce3          	bne	a5,a3,8000807c <__memset+0xd4>
    80008088:	ff8e7793          	andi	a5,t3,-8
    8000808c:	0007871b          	sext.w	a4,a5
    80008090:	01d787bb          	addw	a5,a5,t4
    80008094:	0ce88e63          	beq	a7,a4,80008170 <__memset+0x1c8>
    80008098:	00f50733          	add	a4,a0,a5
    8000809c:	00b70023          	sb	a1,0(a4)
    800080a0:	0017871b          	addiw	a4,a5,1
    800080a4:	0cc77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080a8:	00e50733          	add	a4,a0,a4
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	0027871b          	addiw	a4,a5,2
    800080b4:	0ac77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	0037871b          	addiw	a4,a5,3
    800080c4:	0ac77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	0047871b          	addiw	a4,a5,4
    800080d4:	08c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	0057871b          	addiw	a4,a5,5
    800080e4:	08c77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0067871b          	addiw	a4,a5,6
    800080f4:	06c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0077871b          	addiw	a4,a5,7
    80008104:	06c77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	0087871b          	addiw	a4,a5,8
    80008114:	04c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	0097871b          	addiw	a4,a5,9
    80008124:	04c77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	00a7871b          	addiw	a4,a5,10
    80008134:	02c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	00b7871b          	addiw	a4,a5,11
    80008144:	02c77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	00c7871b          	addiw	a4,a5,12
    80008154:	00c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	00d7879b          	addiw	a5,a5,13
    80008164:	00c7f663          	bgeu	a5,a2,80008170 <__memset+0x1c8>
    80008168:	00f507b3          	add	a5,a0,a5
    8000816c:	00b78023          	sb	a1,0(a5)
    80008170:	00813403          	ld	s0,8(sp)
    80008174:	01010113          	addi	sp,sp,16
    80008178:	00008067          	ret
    8000817c:	00b00693          	li	a3,11
    80008180:	e55ff06f          	j	80007fd4 <__memset+0x2c>
    80008184:	00300e93          	li	t4,3
    80008188:	ea5ff06f          	j	8000802c <__memset+0x84>
    8000818c:	00100e93          	li	t4,1
    80008190:	e9dff06f          	j	8000802c <__memset+0x84>
    80008194:	00000e93          	li	t4,0
    80008198:	e95ff06f          	j	8000802c <__memset+0x84>
    8000819c:	00000793          	li	a5,0
    800081a0:	ef9ff06f          	j	80008098 <__memset+0xf0>
    800081a4:	00200e93          	li	t4,2
    800081a8:	e85ff06f          	j	8000802c <__memset+0x84>
    800081ac:	00400e93          	li	t4,4
    800081b0:	e7dff06f          	j	8000802c <__memset+0x84>
    800081b4:	00500e93          	li	t4,5
    800081b8:	e75ff06f          	j	8000802c <__memset+0x84>
    800081bc:	00600e93          	li	t4,6
    800081c0:	e6dff06f          	j	8000802c <__memset+0x84>

00000000800081c4 <__memmove>:
    800081c4:	ff010113          	addi	sp,sp,-16
    800081c8:	00813423          	sd	s0,8(sp)
    800081cc:	01010413          	addi	s0,sp,16
    800081d0:	0e060863          	beqz	a2,800082c0 <__memmove+0xfc>
    800081d4:	fff6069b          	addiw	a3,a2,-1
    800081d8:	0006881b          	sext.w	a6,a3
    800081dc:	0ea5e863          	bltu	a1,a0,800082cc <__memmove+0x108>
    800081e0:	00758713          	addi	a4,a1,7
    800081e4:	00a5e7b3          	or	a5,a1,a0
    800081e8:	40a70733          	sub	a4,a4,a0
    800081ec:	0077f793          	andi	a5,a5,7
    800081f0:	00f73713          	sltiu	a4,a4,15
    800081f4:	00174713          	xori	a4,a4,1
    800081f8:	0017b793          	seqz	a5,a5
    800081fc:	00e7f7b3          	and	a5,a5,a4
    80008200:	10078863          	beqz	a5,80008310 <__memmove+0x14c>
    80008204:	00900793          	li	a5,9
    80008208:	1107f463          	bgeu	a5,a6,80008310 <__memmove+0x14c>
    8000820c:	0036581b          	srliw	a6,a2,0x3
    80008210:	fff8081b          	addiw	a6,a6,-1
    80008214:	02081813          	slli	a6,a6,0x20
    80008218:	01d85893          	srli	a7,a6,0x1d
    8000821c:	00858813          	addi	a6,a1,8
    80008220:	00058793          	mv	a5,a1
    80008224:	00050713          	mv	a4,a0
    80008228:	01088833          	add	a6,a7,a6
    8000822c:	0007b883          	ld	a7,0(a5)
    80008230:	00878793          	addi	a5,a5,8
    80008234:	00870713          	addi	a4,a4,8
    80008238:	ff173c23          	sd	a7,-8(a4)
    8000823c:	ff0798e3          	bne	a5,a6,8000822c <__memmove+0x68>
    80008240:	ff867713          	andi	a4,a2,-8
    80008244:	02071793          	slli	a5,a4,0x20
    80008248:	0207d793          	srli	a5,a5,0x20
    8000824c:	00f585b3          	add	a1,a1,a5
    80008250:	40e686bb          	subw	a3,a3,a4
    80008254:	00f507b3          	add	a5,a0,a5
    80008258:	06e60463          	beq	a2,a4,800082c0 <__memmove+0xfc>
    8000825c:	0005c703          	lbu	a4,0(a1)
    80008260:	00e78023          	sb	a4,0(a5)
    80008264:	04068e63          	beqz	a3,800082c0 <__memmove+0xfc>
    80008268:	0015c603          	lbu	a2,1(a1)
    8000826c:	00100713          	li	a4,1
    80008270:	00c780a3          	sb	a2,1(a5)
    80008274:	04e68663          	beq	a3,a4,800082c0 <__memmove+0xfc>
    80008278:	0025c603          	lbu	a2,2(a1)
    8000827c:	00200713          	li	a4,2
    80008280:	00c78123          	sb	a2,2(a5)
    80008284:	02e68e63          	beq	a3,a4,800082c0 <__memmove+0xfc>
    80008288:	0035c603          	lbu	a2,3(a1)
    8000828c:	00300713          	li	a4,3
    80008290:	00c781a3          	sb	a2,3(a5)
    80008294:	02e68663          	beq	a3,a4,800082c0 <__memmove+0xfc>
    80008298:	0045c603          	lbu	a2,4(a1)
    8000829c:	00400713          	li	a4,4
    800082a0:	00c78223          	sb	a2,4(a5)
    800082a4:	00e68e63          	beq	a3,a4,800082c0 <__memmove+0xfc>
    800082a8:	0055c603          	lbu	a2,5(a1)
    800082ac:	00500713          	li	a4,5
    800082b0:	00c782a3          	sb	a2,5(a5)
    800082b4:	00e68663          	beq	a3,a4,800082c0 <__memmove+0xfc>
    800082b8:	0065c703          	lbu	a4,6(a1)
    800082bc:	00e78323          	sb	a4,6(a5)
    800082c0:	00813403          	ld	s0,8(sp)
    800082c4:	01010113          	addi	sp,sp,16
    800082c8:	00008067          	ret
    800082cc:	02061713          	slli	a4,a2,0x20
    800082d0:	02075713          	srli	a4,a4,0x20
    800082d4:	00e587b3          	add	a5,a1,a4
    800082d8:	f0f574e3          	bgeu	a0,a5,800081e0 <__memmove+0x1c>
    800082dc:	02069613          	slli	a2,a3,0x20
    800082e0:	02065613          	srli	a2,a2,0x20
    800082e4:	fff64613          	not	a2,a2
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00c78633          	add	a2,a5,a2
    800082f0:	fff7c683          	lbu	a3,-1(a5)
    800082f4:	fff78793          	addi	a5,a5,-1
    800082f8:	fff70713          	addi	a4,a4,-1
    800082fc:	00d70023          	sb	a3,0(a4)
    80008300:	fec798e3          	bne	a5,a2,800082f0 <__memmove+0x12c>
    80008304:	00813403          	ld	s0,8(sp)
    80008308:	01010113          	addi	sp,sp,16
    8000830c:	00008067          	ret
    80008310:	02069713          	slli	a4,a3,0x20
    80008314:	02075713          	srli	a4,a4,0x20
    80008318:	00170713          	addi	a4,a4,1
    8000831c:	00e50733          	add	a4,a0,a4
    80008320:	00050793          	mv	a5,a0
    80008324:	0005c683          	lbu	a3,0(a1)
    80008328:	00178793          	addi	a5,a5,1
    8000832c:	00158593          	addi	a1,a1,1
    80008330:	fed78fa3          	sb	a3,-1(a5)
    80008334:	fee798e3          	bne	a5,a4,80008324 <__memmove+0x160>
    80008338:	f89ff06f          	j	800082c0 <__memmove+0xfc>
	...
